#!/usr/bin/env bash

######################################### OpenFaas Helm Chart

# Add the OpenFaaS helm chart
helm repo add openfaas https://openfaas.github.io/faas-netes/

# Create OpenFaaS namespaces
kubectl apply -f https://raw.githubusercontent.com/openfaas/faas-netes/master/namespaces.yml
kubectl get namespaces

# Deploy OpenFaaS from the helm chart
helm repo update
helm upgrade openfaas --install openfaas/openfaas \
    --namespace openfaas \
    --set functionNamespace=openfaas-fn \
    --set generateBasicAuth=true \
    --set openfaasPRO=false

######################################### OpenFaas Helm Chart
