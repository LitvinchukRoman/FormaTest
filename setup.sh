#!/usr/bin/env bash
set -e

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl apply -f argocd/serviceaccount.yaml
kubectl apply -f argocd/deploy-application.yaml