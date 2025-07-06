#!/bin/sh

curl -sL https://ip-ranges.amazonaws.com/ip-ranges.json | jq -r '.prefixes[].ip_prefix' | sort -V | uniq > amazon/ipv4.txt