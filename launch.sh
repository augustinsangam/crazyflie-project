CRAZYRADIO=$(lsusb -d 1915:7777 | awk -F '[ :]' '{printf "/dev/bus/usb/%s/%s\n", $2, $4}') docker-compose up --build