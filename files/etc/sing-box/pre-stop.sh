#!/bin/sh
nft delete table inet singbox
ip rule delete fwmark 0x1 lookup 100
ip route flush table 100
ip -6 rule delete fwmark 0x1 lookup 100
ip -6 route flush table 100

