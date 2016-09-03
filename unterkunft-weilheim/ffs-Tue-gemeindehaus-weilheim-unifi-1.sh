# /bin/sh
# Unifi AP LR im Büro, mesht per Kabel mit einem Offloader

# Hostname
uci set system.@system[0].hostname='ffs-Tue-gemeindehaus-weilheim-unifi-1'

# Kontaktdaten angeben
uci set gluon-node-info.@owner[0]='freifunk-tuebingen'
uci set gluon-node-info.@owner[0].contact='anfrage@freifunk-tuebingen.de'

# Bandbreitenbegrenzung
uci set gluon-simple-tc.mesh_vpn='interface'
uci set gluon-simple-tc.mesh_vpn.ifname='mesh-vpn'
uci set gluon-simple-tc.mesh_vpn.enabled='0' #Trafficcontrol bei Mesh over VPN ist aus
uci set gluon-simple-tc.mesh_vpn.limit_ingress='11000' #maximal 10Mbit down
uci set gluon-simple-tc.mesh_vpn.limit_egress='3000'   #maximal 2MBit up

# Autoupdate
uci set autoupdater.settings.enabled=1 #aktiviert
uci set autoupdater.settings.branch=stable #branch stable

# Mesh on WAN
uci set network.mesh_wan.auto=1 #an weil hier die Nanostation angeschlossen ist

# Mesh on LAN
uci set network.mesh_lan.auto=1 #an, bringt aber beim Unifi eh nichts

# Wifi generell
uci set wireless.radio0.disabled=0 # Wifi ist an

# Client Netzwerk
uci set wireless.client_radio0.disabled=0 # Client Netzwerk ist an

# Mesh on Radio
uci set wireless.ibss_radio0.disabled='0' #ist an

# Geolocation
uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].latitude='48.48995241961119'
uci set gluon-node-info.@location[0].longitude='9.031700044897661'

# Rebroadcast, empfohlene Einstellung
uci set network.mesh_wan.mesh_no_rebroadcast='1' #WAN off
uci set network.mesh_lan.mesh_no_rebroadcast='1' #LAN off

# Zwei Gatewayverbindungen erzeugen mehr Overhead, aber ist robuster
uci set fastd.mesh_vpn_backbone.peer_limit=2

uci commit && wifi
reboot
