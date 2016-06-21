#/bin/sh

# ssh fd21:b4dc:4b02:0:c66e:1fff:fee6:d942

uci set system.@system[0].hostname='ffs-Tue-MS48-841n-kche'

uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].altitude='350'
uci set gluon-node-info.@location[0].latitude='48.50390850999'
uci set gluon-node-info.@location[0].longitude='9.05380144718'
