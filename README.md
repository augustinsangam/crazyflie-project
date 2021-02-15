# Crazyfly Project

This repo is the entry point of the Crazyfly Project. This repo contains 3 sub-repos :
* dashboard : An Angular Web based project to control the drones
* drone : A C++ based embedded software to control the crazyflies. 
* server : A Python Flask based server to link the dashboard and the drones.

Communication folder contains all the schemas used during the communication between the 3 entities.

# Getting Started

Clone the projet using :

```bash
git clone git@gitlab.com:polytechnique-montr-al/inf3995/20211/equipe-203/crazyflie-project.git --recurse
```


## Requirements

* Use `lsusb` to make sure you have your **Crazyradio dongle** connected to your host and copy the **Device** number
  Replace the device number in the `docker-compose.yaml` file 
  For example if your device number is **020**
  Replace `"/dev/bus/usb/001/**010**"` by `"/dev/bus/usb/001/**020**"`

* Your **Crazyflie 2.X** must be in bootloader mode.
  Press the On/Off button on the crazyflie for 3 seconds to enter Bootloader mode. The Two blue Led will blink.

**NOTE: You must put the **Crazyflie 2.X** in bootloader mode before launching the server. They need to be flashed with the good firmware**

# Build and launch

We have everything in the Docker images. You need to build them and launch.

One docker-compose `docker-compose.yaml` file is available and all the configurations are done

Use `docker-compose up` to build and launch. It will build the images, start containers and link everything.

The log of the dashboard and the server will be available. If you dont wanna see them run `docker-compose up -d` to launch the container in the background.

Note you can build the images without launching the containers by using `docker-compose build`

# Remove everything

At the end of the simulation run `docker-compose down` to delete all the setups including the images.



