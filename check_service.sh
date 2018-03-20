#!/bin/bash
#
# Check if service is running with systemctl
#
# Roger Sikorski <r.sikorski@basecom.de> <roger@sikorski.cc>
#

#OK=0
#WARNING=1
#CRITICAL=2
#UNKNOWN=3

while getopts s: option
do
case "${option}"
in
s) SERVICE=${OPTARG};;
esac
done

systemctl is-active "$SERVICE".service
