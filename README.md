Dieses Repo soll eine Übersicht über die Tübinger Installationen geben. Wichtig ist vor allem, dass Konfiguration und Stand einsehbar sind, ohne dass persönliche oder sicherheitstechnisch relevante Daten sichtbar sind. Deswegen bitte keine Namen, Mailadressen oder private SSH-Keys hinterlegen.

# Installationen

* [Unterkunft Shedhalle Tübingen](unterkunft-shedhalle/) Status: UP
* [Unterkunft Ernst-Bloch-Str.](unterkunft-ernst-bloch-str/) Status: UP
* [Unterkunft Weilheim](unterkunft-weilheim/) Status: UP
* [Gemeindehaus Paul-Lechler-Str.](gemeindehaus-paul-lechler-str/) Status: UP
* [Gemeindehaus Weilheim](gemeindehaus-weilheim/) Status: UP
* [Schulungsräume ICFA](Schulungsraeume-ICFA/) Status: UP, aber momentan Störung
* [Gemeindehaus Lamm am Marktplatz](gemeindehaus-lamm/) Status: Genehmigt
* [Asylcafé Sudhaus](asylcafe-sudhaus/) Status: ?


# Anleitung um den Durchsatz zu messen

Clientseite:
```
cat /dev/zero | pv | nc serverIP port > /dev/null
```

Serverseite:
```
cat /dev/zero | pv | nc -l -p port > /dev/null
```

