#!/bin/bash -ex

DDNS_DOMAIN='tovino.com'
DDNS_PASSWORD='TODO'
DNS_HOST='TODO'
IP=$(curl https://api.ipify.org -sS)

logger "ddns: https://dynamicdns.park-your-domain.com/update?host=${DNS_HOST}&domain=${DDNS_DOMAIN}&password=${DDNS_PASSWORD}&ip=${IP}"
OUT=$(curl "https://dynamicdns.park-your-domain.com/update?host=${DNS_HOST}&domain=${DDNS_DOMAIN}&password=${DDNS_PASSWORD}&ip=${IP}" -sS)
logger "${OUT}"
