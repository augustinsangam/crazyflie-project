# Crazyfly Project

This repo is the entry point of the Crazyfly Project. This repo contains 3 sub-repos :
* dashboard : An Angular Web based project to control the drones
* drone : A C++ based embedded software to control the crazyflies. 
* server : A Python Flask based server to link the dashboard and the drones.

Communication folder contains all the schemas used during the communication between the 3 entities.

# Getting Started

Clone the projet using :

```bash
git clone git@gitlab.com:polytechnique-montr-al/inf3995/20211/equipe-203/crazyflie-project.git --recurse && cd crazyflie-project/dashboard && git checkout master && cd ../drone && git checkout master && cd ../server && git checkout master
```
