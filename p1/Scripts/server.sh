#!/bin/bash

curl -sfL https://get.k3s.io | K3S_TOKEN=pouet sh -s - server --flannel-iface=eth1 \
--write-kubeconfig-mode 644