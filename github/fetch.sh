#!/bin/sh

curl -sL https://api.github.com/meta | jq -r 'del(.["ssh_keys", "verifiable_password_authentication", "ssh_key_fingerprints", "domains"]) | .[] | .[]' | grep -v ":" > github/ipv4.txt