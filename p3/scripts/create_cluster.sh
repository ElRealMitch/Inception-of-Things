#!/bin/bash

kubectl create -f ../namespaces.yml
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests.install.yaml

# command to get default admin password for argocd
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
# command to enable load balancing for namespace argocd (added to namespaces.yml)
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}' 
# command to activate a port-forwarding and open argocd interface in web browser
kubectl port-forward svc/argocd-server -n argocd 8080:443