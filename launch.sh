#!/bin/sh -e

export CRAZYRADIO=$(lsusb -d 1915:7777 | awk -F '[ :]' '{printf "/dev/bus/usb/%s/%s\n", $2, $4}')

echo
echo '============================= BUILDING THE IMAGES =============================='
docker-compose build

echo
echo '============================ RUNNING THE CONTAINERS ============================'
exec docker-compose up
