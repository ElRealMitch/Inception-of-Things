#!/bin/bash

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | echo "admin's pass: $(base64 -d)"
kubectl port-forward svc/argocd-server -n argocd 8080:443