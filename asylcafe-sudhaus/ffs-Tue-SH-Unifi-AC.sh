#!/bin/sh

#fd21:711::46d9:e7ff:fedb:e4d
#fe80::46d9:e7ff:fedb:e4d

# Hostname
uci set system.@system[0].hostname='ffs-Tue-SH-Unifi-AC'

# Kontaktdaten angeben
uci set gluon-node-info.@owner[0]='freifunk-tuebingen'
uci set gluon-node-info.@freifunk-tuebingen[0].contact='anfrage@freifunk-tuebingen.de'

# Autoupdate
uci set autoupdater.settings.enabled=1 #aktiviert
uci set autoupdater.settings.branch=stable #branch stable

# Mesh on WAN an, weil Pico Nur einen Port hat!
uci set network.mesh_wan.auto=1

# Wifi generell
uci set wireless.radio0.disabled=0 # Wifi ist an

# Client Netzwerk
uci set wireless.client_radio0.disabled=0 # Wifi-Client Netzwerk ist an

# Mesh on Radio
uci set wireless.ibss_radio0.disabled='0' # Mesh über Radio ist an, kann aus gemacht werden, wenn es nicht gebraucht wird weil Mesh-On-WAN

# Geolocation
uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].altitude='360'
uci set gluon-node-info.@location[0].latitude='48.499849044'
uci set gluon-node-info.@location[0].longitude='9.065005481'

# Rebroadcast, empfohlene Einstellung wenn Mesh über Kabel
#uci set network.mesh_wan.mesh_no_rebroadcast='1' #WAN off

uci commit 

reboot
