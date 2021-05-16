# Crazyfly Project

This repo is the entry point of the Crazyflie Project. This repo contains 4 important sub-repos :
* dashboard: Angular Web based project to control the drones.
* firmware: Embedded firmware of the Crazyflie 2 drone.
* server: Python Flask based server to link the dashboard and the drones.
* simulation: C++ based embedded software to control the crazyflies. 

Communication folder contains all the schemas used during the communication between the 3 entities.

## Getting Started

Clone the projet using:

```sh
git clone --recurse git@gitlab.com:polytechnique-montr-al/inf3995/20211/equipe-203/crazyflie-project.git
```

## Requirements

* Use `lsusb` command to make sure you have your **Crazyradio PA** connected to your host.

## Build and launch everything

We have everything in the Docker images. You need to build them and launch the containers.

One docker-compose `docker-compose.yml` file is available and all the configurations are done for you.

> Note : You MUST be on a wayland environment before continuing (e.g. GNOME on Wayland). If it’s not available, install and run `weston` (`apt-get install weston`).

Use `./launch.sh` command to build and launch the servers and the dashboard. It will build the images, start containers and link everything.
