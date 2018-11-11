#!/bin/bash

# Ping to web-app
# Get request


# $HOSTNAME

$res=$(time curl $1) 
#time curl https://google.com

$res1=$(awk '{print $3}' $res)
echo $res1

exit 0
