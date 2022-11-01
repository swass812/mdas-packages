#!/bin/bash
# https://www.containiq.com/post/deploy-postgres-on-kubernetes

# Runs BEFORE profile.d (Executions)
set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd) # /opt/packages/postgres-12/

kubectl apply -f $PROJECT_DIR/resources/
kubectl rollout status deployment/postgres

POSTGRES_POD_NAME=$(kubectl get pod -l app=postgres -o jsonpath="{.items[0].metadata.name}")
echo "alias psql='kubectl exec -it $POSTGRES_POD_NAME -- psql'" >> $HOME/.bash_profile