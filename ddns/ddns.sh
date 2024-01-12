#!/bin/bash -ex

IP=$(curl https://api.ipify.org -sS)

curl --verbose "https://dynamicdns.park-your-domain.com/update?host=${HOSTNAME}&domain=${DDNS_DOMAIN}&password=${DDNS_PASSWORD}&ip=${IP}"
