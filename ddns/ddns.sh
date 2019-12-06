#!/bin/bash -ex

IFNAME=enp3s0

IP=$(ip addr show dev $IFNAME | grep "inet " | cut -d" " -f6)
let IP_SLASH_POS=`expr index "$IP" /`
let IP_SLASH_POS=$IP_SLASH_POS-1
IP=${IP:0:${IP_SLASH_POS}}

curl --verbose "https://dynamicdns.park-your-domain.com/update?host=${HOSTNAME}&domain=${DDNS_DOMAIN}&password=${DDNS_PASSWORD}&ip=${IP}"
