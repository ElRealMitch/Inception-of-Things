#!/bin/bash

curl -sfL https://get.k3s.io | K3S_TOKEN=pouet sh -s - server --bind-address 192.168.56.110 --flannel-iface=eth1 \
--write-kubeconfig-mode 644