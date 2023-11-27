#!/bin/bash

curl -sfL https://get.k3s.io | K3S_URL="192.168.56.110:6443" sh -s - agent --token pouet --node-ip 192.168.56.111