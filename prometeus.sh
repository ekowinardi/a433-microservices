#!/bin/bash

GREEN='\033[0;32m'
R='\033[0m'

echo -ne "${GREEN}Masukkan namespaces: ${R}"
read namespace

kubectl create ns $namespace

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install my-kube-prometheus-stack prometheus-community/kube-prometheus-stack --version 55.4.0 --namespace $namespace
