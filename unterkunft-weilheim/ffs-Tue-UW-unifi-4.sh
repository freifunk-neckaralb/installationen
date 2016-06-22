#!/bin/sh

# Hostname
uci set system.@system[0].hostname='ffs-Tue-UW-unifi-4'

# Kontaktdaten angeben
uci set gluon-node-info.@owner[0]='freifunk-tuebingen'
uci set gluon-node-info.@freifunk-tuebingen[0].contact='anfrage@freifunk-tuebingen.de'

# Autoupdate
uci set autoupdater.settings.enabled=1 #aktiviert
uci set autoupdater.settings.branch=stable #branch stable

# Mesh on WAN
uci set network.mesh_wan.auto=1 #an, damit die Unifi über Kabel verbunden werden kann

# Wifi generell
uci set wireless.radio0.disabled=0 # Wifi ist an

# Client Netzwerk
uci set wireless.client_radio0.disabled=0 # Wifi-Client Netzwerk ist an

# Mesh on Radio
uci set wireless.ibss_radio0.disabled='0' # Mesh über Radio ist an, kann aus gemacht werden, wenn es nicht gebraucht wird weil Mesh-On-WAN

# Geolocation
uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].latitude='48.498309887'
uci set gluon-node-info.@location[0].longitude='9.030474722'

# Rebroadcast, empfohlene Einstellung
uci set network.mesh_wan.mesh_no_rebroadcast='1' #WAN off

uci commit 

reboot
