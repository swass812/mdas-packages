#!/bin/bash

set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)"; pwd)

GEMFIRE_FOR_REDIS_TARGET=$PROJECT_DIR/gemfire/gemfire-for-redis-apps-1.0.1
VMWARE_GEMFIRE_TARGET=$PROJECT_DIR/gemfire/vmware-gemfire-9.15.0

mkdir -p $PROJECT_DIR/gemfire

# INSTALL & UNPACK
curl -o $VMWARE_GEMFIRE_TARGET.tgz https://spring-modern-data-architecture-files.s3.us-west-1.amazonaws.com/vmware-gemfire-9.15.0.tgz
# cd $HOME/gemfire
# tar -xvf $VMWARE_GEMFIRE_TARGET.tgz

# cd $PROJECT_DIR

# INSTALL & UNPACK GEMFIRE FOR REDIS
curl -o $GEMFIRE_FOR_REDIS_TARGET.tgz https://spring-modern-data-architecture-files.s3.us-west-1.amazonaws.com/gemfire-for-redis-apps-1.0.1.tgz
# cd $HOME/gemfire
# tar -xvf $GEMFIRE_FOR_REDIS_TARGET.tgz

# GET EXECUTEABLE GEMFIRE/GFSH
# cd $VMWARE_GEMFIRE_TARGET/bin
# cp -r $GEMFIRE_FOR_REDIS_TARGET /tmp