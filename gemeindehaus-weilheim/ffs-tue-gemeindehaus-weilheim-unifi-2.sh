# /bin/sh
# Unifi AP LR im Gemeindehaus, mesh on radio

# Hostname
uci set system.@system[0].hostname='ffs-tue-gemeindehaus-weilheim-unifi-2'

# Kontaktdaten angeben
uci set gluon-node-info.@owner[0]='freifunk-tuebingen'
uci set gluon-node-info.@owner[0].contact='anfrage@freifunk-tuebingen.de'

# Bandbreitenbegrenzung
uci set gluon-simple-tc.mesh_vpn='interface'
uci set gluon-simple-tc.mesh_vpn.ifname='mesh-vpn'
uci set gluon-simple-tc.mesh_vpn.enabled='0' #Trafficcontrol bei Mesh over VPN ist aus
uci set gluon-simple-tc.mesh_vpn.limit_ingress='10000' #maximal 10Mbit down
uci set gluon-simple-tc.mesh_vpn.limit_egress='2000'   #maximal 2MBit up

# Autoupdate
uci set autoupdater.settings.enabled=1 #aktiviert
uci set autoupdater.settings.branch=stable #branch stable

# Mesh on WAN
uci set network.mesh_wan.auto=1 #an

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
uci set gluon-node-info.@location[0].latitude='48.48977110023968'
uci set gluon-node-info.@location[0].longitude='9.032172113684283'

# Rebroadcast, empfohlene Einstellung
uci set network.mesh_wan.mesh_no_rebroadcast='1' #WAN off
uci set network.mesh_lan.mesh_no_rebroadcast='1' #LAN off



uci commit && wifi
reboot
