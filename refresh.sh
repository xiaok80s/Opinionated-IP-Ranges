#!/bin/sh

find . -name fetch.sh | sort -h | awk '{print "Executing "$1"...";system("sh \""$1"\"")}'

echo "Merging all IP ranges..."
find . -name ipv4.txt | sort -h | xargs cat | cidrmerge > opinionated_ip_ranges.txt

echo "Deleting ipv4.txt..."
find . -name ipv4.txt -delete