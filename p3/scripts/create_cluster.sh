#!/bin/bash

k3d cluster create IoT
kubectl create -f ./namespaces.yml
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo -e "[\033[3;96mWAITING FOR PODS STARTING...\033[m]"
sleep 2
kubectl wait pod --all --for=condition=Ready --namespace=argocd --timeout=-1s
echo -e "[\033[3;96mPODS ARE READY!\033[m]"

# set current namespace on argocd
# not working with default server without that command
kubectl config set-context --current --namespace=argocd 

kubectl apply -f ./playground.yml
