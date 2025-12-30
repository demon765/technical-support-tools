#!/bin/bash
# Description: Checks a DNS record across multiple public resolvers to check propagation.
# Usage: ./dns_propagation.sh google.com

DOMAIN=$1

if [ -z "$DOMAIN" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

# List of Public DNS Servers: Google, Cloudflare, Quad9
RESOLVERS=("8.8.8.8" "1.1.1.1" "9.9.9.9")

echo "Checking A record propagation for: $DOMAIN"
echo "------------------------------------------------"

for NS in "${RESOLVERS[@]}"; do
    # Use dig with +short to get just the IP address
    IP=$(dig @$NS "$DOMAIN" +short A | head -n 1)
    
    if [ -z "$IP" ]; then
        echo "Server $NS : No Record Found"
    else
        echo "Server $NS : $IP"
    fi
done
echo "------------------------------------------------"
