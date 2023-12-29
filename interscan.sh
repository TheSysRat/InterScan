#!/bin/bash

# Check if the script is provided with exactly one argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <IP>"
    exit 1
fi

# Scan port ..

for port in {1..65535}; do (echo Hello > /dev/tcp/$1/$port && echo "Port $port is OPEN") 2>/dev/null; done 
