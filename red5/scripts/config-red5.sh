#!/usr/bin/env bash

# Increase rtmp timeout
sed -i -e "s/^rtmp.ping_interval.*/rtmp.ping_interval=5000/" /opt/red5/conf/red5.properties
