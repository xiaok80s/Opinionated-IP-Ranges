#!/bin/sh

curl -sL https://api.github.com/meta | jq -r '{web,git,api} | .[] | .[]' | grep -v ":" > github/ipv4.txt
