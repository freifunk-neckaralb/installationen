#!/bin/sh
# FW version 0.7

uci set system.@system[0].hostname='ffs-Tue-HerrmannDiemHaus-Unifi'

uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].latitude='48.532832229092264'
uci set gluon-node-info.@location[0].longitude='9.062298685339556'
uci commit && wifi
reboot



