# /bin/sh
# FW version 0.7

# Die UNIFI auf dem Dachboden:
# Mesh-On-Lan mit Unifi. 
# ssh root@fd21:b4dc:4b1e:0:46d9:e7ff:fe7b:c2a9
uci set system.@system[0].hostname='ffs-Tuebi-Shedhalle-Unifi-1'
uci set network.mesh_lan.auto=1
uci set network.mesh_wan.auto=1
uci set wireless.ibss_radio0.disabled=0
uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].latitude='48.52708433311929'
uci set gluon-node-info.@location[0].longitude='9.06520083549367'
uci set network.mesh_wan.mesh_no_rebroadcast='1'
uci set network.mesh_lan.mesh_no_rebroadcast='1' 
uci commit && wifi
reboot


