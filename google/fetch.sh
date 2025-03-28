#!/bin/sh

curl -sL https://www.gstatic.com/ipranges/goog.txt | grep -v ':' | sort -V | uniq > google/ipv4.txt