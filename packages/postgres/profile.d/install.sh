#!/bin/bash

export POSTGRES_CONFIG_HOME=~/templates/postgres/config
kubectl apply -f $POSTGRES_CONFIG_HOME
kubectl rollout status deployment/postgres
export POSTGRES_POD_NAME=$(kubectl get pod -l app=postgres -o jsonpath="{.items[0].metadata.name}")
