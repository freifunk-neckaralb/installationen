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
* WR841N im EG HS 59



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


