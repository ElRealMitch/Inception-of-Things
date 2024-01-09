#!/bin/bash

k3d cluster stop IoT
k3d cluster delete IoT
docker rmi $(sudo docker image ls -aq)