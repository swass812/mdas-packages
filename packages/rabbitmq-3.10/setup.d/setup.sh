#!/bin/bash

# Runs BEFORE profile.d (Executions)
set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd) # /opt/packages/postgres-12/

# MAKE SURE VIRTUAL CLUSTER IS ENABLE FOR NAMESPACE CREATION
# https://docs.educates.dev/custom-resources/workshop-definition.html#provisioning-a-virtual-cluster

# Install Cluster Operator
# kubectl apply -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"

# Create Cluster
# k apply -f $PROJECT_DIR/resources/


#https://www.rabbitmq.com/kubernetes/operator/quickstart-operator.html

# username="$(kubectl get secret hello-world-default-user -o jsonpath='{.data.username}' | base64 --decode)"
# echo "username: $username"
# password="$(kubectl get secret hello-world-default-user -o jsonpath='{.data.password}' | base64 --decode)"
# echo "password: $password"

# can i make a secret?

# https://hub.docker.com/_/rabbitmq


RELEASE_NAME=release
## WITH HELM
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install $RELEASE_NAME bitnami/rabbitmq-cluster-operator
# kubectl get deploy -w --namespace default -l app.kubernetes.io/name=rabbitmq-cluster-operator,app.kubernetes.io/instance=$RELEASE_NAME

# Create Instance
# k apply -f $PROJECT_DIR/resources/
# echo "apiVersion: rabbitmq.com/v1beta1
# kind: RabbitmqCluster
# metadata:
#   name: definition" > defintion.yaml

# kubectl apply -f defintion.yaml

# kubectl get all -l app.kubernetes.io/name=definition
