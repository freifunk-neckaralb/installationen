#!/bin/sh

# 1043er als UPLINK / VPN Offloader im östlichen Zimmer

# ssh root@ffs-Tue-HerrmannDiemHaus-Uplink
uci set system.@system[0].hostname='ffs-Tue-HerrmannDiemHaus-Uplink'

uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].latitude='48.532924587978066'
uci set gluon-node-info.@location[0].longitude='9.062287956503496'
uci commit && wifi
reboot

