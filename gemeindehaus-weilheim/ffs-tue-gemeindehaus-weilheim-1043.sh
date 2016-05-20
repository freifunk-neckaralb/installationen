# /bin/sh
# 1043er als UPLINK / VPN Offloader im Büro

# Hostname
uci set system.@system[0].hostname='ffs-tue-gemeindehaus-weilheim-1043'
uci commit

# Kontaktdaten angeben
uci set gluon-node-info.@owner[0]='freifunk-tuebingen'
uci set gluon-node-info.@freifunk-tuebingen[0].contact='anfrage@freifunk-tuebingen.de'
uci commit

# Bandbreitenbegrenzung
uci set simple-tc.mesh_vpn='interface'
uci set simple-tc.mesh_vpn.ifname='mesh-vpn'
uci set simple-tc.mesh_vpn.enabled='1' #Mesh over VPN ist an
uci set simple-tc.mesh_vpn.limit_ingress='10000' #maximal 10Mbit down
uci set simple-tc.mesh_vpn.limit_egress='2000'   #maximal 2MBit up
uci commit

# Autoupdate
uci set autoupdater.settings.enabled=1 #aktiviert
uci set autoupdater.settings.branch=stable #branch stable
uci commit

# Mesh on WAN
uci set network.mesh_wan.auto=0 #aus
uci commit network

# Mesh on LAN
uci set network.mesh_lan.auto=1 #an
uci commit network

# Wifi generell
uci set wireless.radio0.disabled=0 # Wifi ist an
uci commit wireless

# Client Netzwerk
uci set wireless.client_radio0.disabled=0 # Client Netzwerk ist an
uci commit wireless

# Mesh on Radio
uci set wireless.ibss_radio0.disabled=0 #ist an
uci commit wireless

# Geolocation
uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].latitude='48.48999152762593'
uci set gluon-node-info.@location[0].longitude='9.031635671881304'
uci commit

# Rebroadcast, empfohlene Einstellung
uci set network.mesh_wan.mesh_no_rebroadcast='1' #WAN off
uci set network.mesh_lan.mesh_no_rebroadcast='1' #LAN off
uci commit network

wifi
reboot
