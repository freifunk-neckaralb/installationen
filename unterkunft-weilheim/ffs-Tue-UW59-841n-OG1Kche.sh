#!/bin/sh

# Hostname
uci set system.@system[0].hostname='ffs-Tue-UW59-841n-OG1Kche'

# Kontaktdaten angeben
uci set gluon-node-info.@owner[0]='freifunk-tuebingen'
uci set gluon-node-info.@freifunk-tuebingen[0].contact='anfrage@freifunk-tuebingen.de'

# Autoupdate
uci set autoupdater.settings.enabled=1 #aktiviert
uci set autoupdater.settings.branch=stable #branch stable

# Mesh on WAN
uci set network.mesh_wan.auto=0 #aus, denn 841n hat genug Ports

# Wifi generell
uci set wireless.radio0.disabled=0 # Wifi ist an

# Client Netzwerk
uci set wireless.client_radio0.disabled=0 # Wifi-Client Netzwerk ist an

# Mesh on Radio
uci set wireless.ibss_radio0.disabled='0' # Mesh über Radio ist an

# Geolocation
uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].latitude='48.49800447909248'
uci set gluon-node-info.@location[0].longitude='9.030106812742815'

uci commit 

reboot
