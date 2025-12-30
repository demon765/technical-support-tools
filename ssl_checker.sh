#!/bin/bash
# Description: Checks the expiration date of a domain's SSL certificate.
# Usage: ./ssl_checker.sh google.com

DOMAIN=$1

if [ -z "$DOMAIN" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

echo "Checking SSL certificate for $DOMAIN..."

# Use openssl to fetch the certificate and extract the end date
EXPIRY_DATE=$(echo | openssl s_client -servername "$DOMAIN" -connect "$DOMAIN":443 2>/dev/null | openssl x509 -noout -enddate | cut -d= -f2)

if [ -z "$EXPIRY_DATE" ]; then
    echo "Error: Could not retrieve certificate. Check domain name or connectivity."
else
    echo "Certificate for $DOMAIN expires on: $EXPIRY_DATE"
fi
