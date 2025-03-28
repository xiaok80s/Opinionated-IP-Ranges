#!/bin/sh

curl -sL https://openai.com/chatgpt-user.json | jq -r '.prefixes[].ipv4Prefix' | sort -V | uniq > openai/ipv4.txt