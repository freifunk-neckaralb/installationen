# /bin/sh

# 1043er als UPLINK / VPN Offloader im Büro

# ssh root@fd21:b4dc:4b1e:0:c24a:ff:fe40:e6a6
uci set system.@system[0].hostname='ffs-Tuebi-Shedhalle-1043nd-UPLNK'

uci set network.mesh_lan.auto=1 # Mesh-On-LAN
uci set wireless.ibss_radio0.disabled=1 # MeshOn-WLAN abschalten auf OFFLOADER

#Mesh-Netzwerk abschalten (Gluon 2016.1.x)
uci set wireless.ibss_radio0.disabled=1 

uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].latitude='48.527055911740746'
uci set gluon-node-info.@location[0].longitude='9.065351039198504'
uci set network.mesh_wan.mesh_no_rebroadcast='1'
uci set network.mesh_lan.mesh_no_rebroadcast='1'
uci set gluon-simple-tc.mesh_vpn.limit_ingress='10000'
uci set gluon-simple-tc.mesh_vpn.limit_egress='500'
uci commit && wifi
reboot


