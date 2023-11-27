#!/bin/bash

curl -sfL https://get.k3s.io | K3S_TOKEN=pouet sh -s - server --flannel-backend none \
--write-kubeconfig-mode 644 --node-ip 192.168.56.110