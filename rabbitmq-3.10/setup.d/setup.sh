#!/bin/bash

# Runs BEFORE profile.d (Executions)
set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd) # /opt/packages/postgres-12/

kubectl apply -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"
kubectl apply -f https://raw.githubusercontent.com/rabbitmq/cluster-operator/main/docs/examples/hello-world/rabbitmq.yaml
# apiVersion: rabbitmq.com/v1beta1
# kind: RabbitmqCluster
# metadata:
#     name: hello-world


# TEST: k get all

#https://www.rabbitmq.com/kubernetes/operator/quickstart-operator.html

# username="$(kubectl get secret hello-world-default-user -o jsonpath='{.data.username}' | base64 --decode)"
# echo "username: $username"
# password="$(kubectl get secret hello-world-default-user -o jsonpath='{.data.password}' | base64 --decode)"
# echo "password: $password"

# can i make a secret?

# https://hub.docker.com/_/rabbitmq