#!/bin/bash

sudo k3d cluster stop IoT
sudo k3d cluster delete IoT

sudo docker rmi $(sudo docker image ls -aq)
# sudo docker rm $(sudo docker volume ls -q)