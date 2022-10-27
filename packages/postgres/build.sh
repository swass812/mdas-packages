#!/bin/bash

set -x
set -eo pipefail

export POSTGRES_CONFIG_HOME=$(cd "$dirname $0)"; pwd)/resources

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)"; pwd)

kubectl apply -f $POSTGRES_CONFIG_HOME
kubectl rollout status deployment/postgres
export POSTGRES_POD_NAME=$(kubectl get pod -l app=postgres -o jsonpath="{.items[0].metadata.name}")
