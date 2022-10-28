#!/bin/bash

# Runs BEFORE profile.d (Executions)
set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd) # /opt/packages/postgres-12/
# mkdir -p $PROJECT_DIR/dir-in-workshop

# echo $PROJECT_DIR
kubectl apply -f $PROJECT_DIR/resources/
kubectl rollout status deployment/postgres
