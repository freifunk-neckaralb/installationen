# Gemeindehaus Weilheim

![](gemeindehaus-weilheim.png)

## Information
Im Raum des kleinen Gemeindehauses und im umliegenden Gelände der Kirche soll Freifunk bereitgestellt werden. Ein Internetanschluss ist im ca. 30m entfernten Pfarrhaus im 1OG vorhanden, die Geschwindigkeit ist nicht bekannt. Das Pfarrhaus hat angeblich im 1OG Lehmwände.

## Status
###11.05.2016
Geld ist bewilligt unter der Vorgabe keine Außengeräte anzubringen, die Geschwindigkeit zu beschränken und ein Abschalten nach Bedarf erfolgen kann.

Erster Plan aus dem Bauch heraus:

* 1OG Pfarrhaus: Ein 1043 Offloader am Internet und ein per Kabel verbundener Unifi AP LR
* EG Gemeindehaus: Ein Unifi AP LR der hoffentlich mit dem AP LR im Pfarrhaus mesht.

## Setup

* [ffs-tue-gemeindehaus-weilheim-1043](ffs-gemeindehaus-weilheim-1043.sh) Ein 1043 als Offloader im Büro
* [ffs-tue-gemeindehaus-weilheim-unifi-1](ffs-gemeindehaus-weilheim-unifi-1.sh) Unifi AP LR im Büro, der MeshOnLan mit dem Offloader macht
* [ffs-tue-gemeindehaus-weilheim-unifi-2](ffs-gemeindehaus-weilheim-unifi-2.sh) Unifi AP LR im Gemeindehaus mit MeshOnRadio
