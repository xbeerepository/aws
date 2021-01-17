#!/bin/bash -e

publicIpv4=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
publicHostname=$(curl -s http://169.254.169.254/latest/meta-data/public-hostname)
localIpv4=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)

cat > /var/xbee/hostdata.json <<EOF
{
  "publicIpv4": "$publicIpv4",
  "publicHostname": "$publicHostname",
  "localIpv4": "$localIpv4"
}
EOF