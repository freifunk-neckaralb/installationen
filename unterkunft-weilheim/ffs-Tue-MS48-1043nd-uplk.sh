#/bin/sh
uci set system.@system[0].hostname='ffs-Tue-MS48-1043nd-upl
k'

uci set gluon-node-info.@location[0]=location
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].altitude='350'
uci set gluon-node-info.@location[0].latitude='48.5037770'
uci set gluon-node-info.@location[0].longitude='9.05386582'

uci set simple-tc.mesh_vpn.enabled='1'
uci set simple-tc.mesh_vpn.limit_ingress='7000'
uci set simple-tc.mesh_vpn.limit_egress='1000'