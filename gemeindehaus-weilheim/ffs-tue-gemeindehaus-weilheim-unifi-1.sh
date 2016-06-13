#!/bin/sh
# FW version 0.7
# Unifi AP LR im Büro, mesht per Kabel mit einem Offloader

# Hostname
uci set system.@system[0].hostname='ffs-tue-gemeindehaus-weilheim-unifi-1'
uci commit

# Kontaktdaten angeben
uci set gluon-node-info.@owner[0]='freifunk-tuebingen'
uci set gluon-node-info.@freifunk-tuebingen[0].contact='anfrage@freifunk-tuebingen.de'
uci commit

# Bandbreitenbegrenzung
uci set simple-tc.mesh_vpn='interface'
uci set simple-tc.mesh_vpn.ifname='mesh-vpn'
uci set simple-tc.mesh_vpn.enabled='0' #Trafficcontrol bei Mesh over VPN ist aus
uci set simple-tc.mesh_vpn.limit_ingress='10000' #maximal 10Mbit down
uci set simple-tc.mesh_vpn.limit_egress='2000'   #maximal 2MBit up
uci commit

# Autoupdate
uci set autoupdater.settings.enabled=1 #aktiviert
uci set autoupdater.settings.branch=stable #branch stable
uci commit

# Mesh on WAN
uci set network.mesh_wan.auto=1 #an
uci commit network

# Wifi generell
uci set wireless.radio0.disabled=0 # Wifi ist an
uci commit wireless

# Client Netzwerk
uci set wireless.client_radio0.disabled=0 # Client Netzwerk ist an
uci commit wireless

# Mesh on Radio
uci set wireless.ibss_radio0.disabled='0' #ist an
uci commit wireless

# Geolocation
uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].latitude='48.48995241961119'
uci set gluon-node-info.@location[0].longitude='9.031700044897661'
uci commit

# Rebroadcast, empfohlene Einstellung
uci set network.mesh_wan.mesh_no_rebroadcast='1' #WAN off
uci commit network

wifi
reboot
