#!/bin/bash
################################################################################
#
# Script Created by http://eos42.io
#
#
# https://github.com/eos42/
#
################################################################################

PATRONEOS=/opt/patroneos/patroneosd
$PATRONEOS -configFile /opt/patroneos/config.json "$@" > ./stdout.txt 2> ./stderr.txt &  echo $! > ./patroneos.pid
