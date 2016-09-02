# Unterkunft Weilheim

## Information
Die Unterkunft besteht aus zwei zweistöckigen Häusern am Stadtrand von Weilheim. Da es vor Ort kein Unitymedia gibt und die Telekom nicht bezahlbar ist, muss die Unterkunft über Richtfunk versorgt werden. 


## Setup

### Sender Südstadt
* [ffs-Tuebi-MS48-1043nd-uplk](ffs-Tuebi-MS48-1043nd-uplk.sh) Offloader am Internet
* [ffs-Tuebi-MS48-841n-kche](ffs-Tuebi-MS48-841n-kche.sh) Node in der Küche
* Eine Richtfunkantenne mit Originalfirmware als Station

### Relay Schloss
* Eine Richtunkantenne mit Originalfirmware als AP

### Unterkunft
Zwei Häuser: Hausnummer 59 und 61.

* Eine Richtfunkantenne zum Schloss in der Küche HS 59

* [ffs-Tue-UW-unifi-2](ffs-Tue-UW-unifi-2.sh) Unifi AP in der Küche HS 59
* [ffs-Tue-UW-unifi-3](ffs-Tue-UW-unifi-3.sh) Unifi AP im Gemeinschaftsraum des Ak HS 59
* [ffs-Tue-UW-unifi-4](ffs-Tue-UW-unifi-4.sh) Unifi AP im Fenster HS 61
* [ffs-Tue-UW-unifi-1](ffs-Tue-UW-unifi-1.sh) Unifi AP im hinteren Teil HS 61
* [ffs-Tue-UW59-841n-OG1Kche] in Küche 1. OG HS 59
* [ffs-Tue-UW59-841n-EG] im EG HS 59
* Nanostation loco M5 [weilheim-unterkunft-to-kirchturm](XW-0418D6EADDDB.cfg) AP mode 192.168.1.38



## Status
### 11.05.2016
Stefan und Justin haben bereits mehrfach die Richtfunkverbindung erfolgreich getestet. Eine Station in der Südstadt und eine Relaystation auf dem Schloss stehen bereits. Es fehlt nur noch die Installation in der Unterkunft selbst.

Die Genehmigung vom LRA ist da, der Kontakt zum Hausmeister ist hergestellt. Da dieser gerade vertreten wird, ruft Justin morgen nochmal an, und fragt, wann man Zugang zu verschlossenen Räumen bekommt, um Geräte aufzustellen.

### 22.06.2016
Stefan und Justin haben folgendes in der Unterkunft installiert:

* 1x Richtfunkantenne
* 4x Unifi AP
* 1x TP-WR841N

Die Meshverbindung könnte besser sein, aber "das Internet" scheint in den meisten Bereichen des Hauses anzukommen.

### 09.07.2016

Am 8.7. und 9.7. zweimal dagewesen. Die Richtfunkantenne gegen eine nanoBeam ausgetauscht. Die Richtfunkantenne aufs Dach verlegt. Zwei weitere 841 in Haus 59 installiert, um dorf alles abzudecken.

Die Internetverbindung bricht immer noch viel ab. Die Schwachstelle ich jetzt aber die RF-Strecke von Südstadt zum Schloss. Belegbar durch: Ping von Weilheim zum Schloss: 0.2ms. Ping über Schloss zur Südstadt schwankte zwischen 6ms und 20ms.

Es sind jetzt in allen drei RF-Antennen folgende Kanäle aktiviert, auch wenn 5500 weiterhin verwendet wird: 5500,5530,5535,5565,5570,5610,5615
Das waren nach Analyse mit AirMax-Tool die freisten Kanäle für Weilheim<->Schlossberg<->Derendingen

### 10.07.2016

Ich war in Derendingen, aber die Antennenposition lässt sich dort nicht verbessern. Alle versuche alle Antennen auch 10Mhz ChannelWidth umzustellen (was mehr Robustheit bringen sollte) waren erfolglos. Als nächstes muss auf dem Schlossberg die Antennenausrichtung gecheckt werden. Ich denke die muss 1° nach links...

### 12.07.2016
Die RF-Antenne in Weilheim hat sich auf den AP auf dem Schlossberg angemeldet, und nicht nach Derendingen. Das habe ich jetzt ausgeschlossen, indem ich die MAC von Derendingen in das Feld "Lock to AP" eingetragen habe.

### 18.07.2016
Es gab beim UPLINK in der letzten Woche öfters Ausfälle. Ich habe den Support angerufen und das soll behoben werden. Dem FF-Router habe ich einen CRON-Job eingetragen, dass er jede nacht um 4:15 rebootet. U.u. wäre ein Zeitschaluhr für den UPLINK-Router auch für 4am auch noch angebracht.

### 02.09.2016
Eine RF vom Kirchturm am Gemeindehaus Weilheim zur Unterkunft soll gelegt werden.
Folgende RF-Antennen:

### 02.09.2016
Stefan und Justin haben Weilheim Unterkunft und Weilheim Gemeindehaus mit Richtfunk verbunden.
