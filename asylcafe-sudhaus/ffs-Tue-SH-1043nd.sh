#/bin/sh

# ssh fd21:b4dc:4b02:0:c66e:1fff:fe97:7956

read -p 'Passwort für das Mitarbeiterwlan: ' PSK
if [ -z "$PSK" ];
  then
	echo "Bitte das PSK angeben und erneut versuchen."
	exit
fi


uci set system.@system[0].hostname='ffs-Tue-SH-1043nd'

# geolocation
uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].altitude='350'
uci set gluon-node-info.@location[0].latitude='48.500094310'
uci set gluon-node-info.@location[0].longitude='9.065316617'

uci set simple-tc.mesh_vpn.enabled='1'
uci set simple-tc.mesh_vpn.limit_ingress='7000'
uci set simple-tc.mesh_vpn.limit_egress='1000'

uci set network.mesh_wan.mesh_no_rebroadcast='0'
uci set network.mesh_lan.mesh_no_rebroadcast='0'

uci set network.mesh_lan.auto=1 # Mesh-On-LAN zur Pico
uci set wireless.ibss_radio0.disabled=1 

# privates wlan, Bitte PSK vor Anwendung durch echten Key austauschen
uci set wireless.wan_radio0=wifi-iface
uci set wireless.wan_radio0.device=radio0
uci set wireless.wan_radio0.network=wan
uci set wireless.wan_radio0.mode=ap
uci set wireless.wan_radio0.encryption="psk2+tkip+ccmp"
uci set wireless.wan_radio0.ssid="sudhaus-intern"
uci set wireless.wan_radio0.key="$PSK"
uci set wireless.wan_radio0.disabled=0
uci commit
wifi

uci commit && reboot
