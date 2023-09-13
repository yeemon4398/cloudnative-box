#!/usr/bin/env bash

sudo sysctl fs.inotify.max_user_watches=524288
sudo sysctl fs.inotify.max_user_instances=512

kind create cluster --config ../config-files/kindconfig-v1231.yaml      # Create kind cluster 123
sleep 1
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.13.9/config/manifests/metallb-native.yaml --context kind-123
sleep 120
kubectl create -f ../config-files/metallb-v0139-ipaddress-pool-1.yaml --context kind-123
sleep 0.5
kubectl config rename-context kind-123 123      # kubectl config rename-context kind-ambient ambient
watch kubectl get pods -A --context 123
