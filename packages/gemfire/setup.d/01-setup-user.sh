#!/bin/bash

# Unpack tar Files

set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)

echo $VMWARE_GEMFIRE_TARGET

cd $PROJECT_DIR/gemfire

# INSTALL & UNPACK
# curl -o $VMWARE_GEMFIRE_TARGET.tgz https://spring-modern-data-architecture-files.s3.us-west-1.amazonaws.com/vmware-gemfire-9.15.0.tgz
tar -xvf $VMWARE_GEMFIRE_TARGET.tgz


# INSTALL & UNPACK GEMFIRE FOR REDIS
# curl -o $GEMFIRE_FOR_REDIS_TARGET.tgz https://spring-modern-data-architecture-files.s3.us-west-1.amazonaws.com/gemfire-for-redis-apps-1.0.1.tgz
# cd $HOME/gemfire
tar -xvf $GEMFIRE_FOR_REDIS_TARGET.tgz

# GET EXECUTEABLE GEMFIRE/GFSH
cd $VMWARE_GEMFIRE_TARGET/bin
cp -r $GEMFIRE_FOR_REDIS_TARGET /tmp