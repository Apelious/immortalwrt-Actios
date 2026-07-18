#!/bin/sh
ip route add local default dev lo table 100
ip rule add fwmark 0x1 lookup 100
ip -6 route add local default dev lo table 100
ip -6 rule add fwmark 0x1 lookup 100
nft -f /etc/sing-box/singbox.nft
