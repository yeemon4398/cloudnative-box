#!/usr/bin/env bash

# Clean up the clusters
kind delete clusters 123
kubectl config delete-context 123
kind delete clusters 124
kubectl config delete-context 124
kind delete clusters 125
kubectl config delete-context 125
