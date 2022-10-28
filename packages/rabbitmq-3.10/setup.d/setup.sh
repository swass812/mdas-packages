#!/bin/bash

# Runs BEFORE profile.d (Executions)
set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd) # /opt/packages/postgres-12/

# MAKE SURE VIRTUAL CLUSTER IS ENABLE FOR NAMESPACE CREATION
# https://docs.educates.dev/custom-resources/workshop-definition.html#provisioning-a-virtual-cluster

# Install Cluster Operator
kubectl apply -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"

# Create Cluster
# k apply -f $PROJECT_DIR/resources/


#https://www.rabbitmq.com/kubernetes/operator/quickstart-operator.html

# username="$(kubectl get secret hello-world-default-user -o jsonpath='{.data.username}' | base64 --decode)"
# echo "username: $username"
# password="$(kubectl get secret hello-world-default-user -o jsonpath='{.data.password}' | base64 --decode)"
# echo "password: $password"

# can i make a secret?

# https://hub.docker.com/_/rabbitmq