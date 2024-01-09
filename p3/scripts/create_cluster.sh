#!/bin/bash

k3d cluster create IoT
kubectl create -f ./namespaces.yml
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
# sleep 10
# get default admin password for argocd
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
# enable load balancing for namespace argocd (added to namespaces.yml)
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
# activate a port-forwarding and open argocd interface in web browser
# kubectl port-forward svc/argocd-server -n argocd 8080:443 &
# set current namespace on argocd
kubectl config set-context --current --namespace=argocd # optionnal
# create app
# argocd app create wil42-playground --repo https://github.com/ElRealMitch/jcervoni-IoT-apps/ --path playground --dest-server https://kubernetes.default.svc --plaintext --insecure --dest-namespace dev
# kubectl apply -f ./playground.yml

# # check app state
# argocd app get playground
# # then run the app
# argocd app sync playground