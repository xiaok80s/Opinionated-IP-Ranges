#!/bin/sh

curl -sL https://www.cloudflare.com/ips-v4/ | sort -V | uniq > cloudflare/ipv4.txt