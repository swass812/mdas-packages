#!/bin/bash

# Runs BEFORE profile.d (Executions)
set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)/gemfire # /opt/packages/gemfire/gemfire

GEMFIRE_FOR_REDIS_TARGET=$PROJECT_DIR/gemfire-for-redis-apps-1.0.1
VMWARE_GEMFIRE_TARGET=$PROJECT_DIR/vmware-gemfire-9.15.0

cd $PROJECT_DIR

# INSTALL & UNPACK VMWARE GEMFIRE
tar -xvf $VMWARE_GEMFIRE_TARGET.tgz

# INSTALL & UNPACK GEMFIRE FOR REDIS
tar -xvf $GEMFIRE_FOR_REDIS_TARGET.tgz


#DELECT ZIPPED FILES
rm $(find -type f -name "*.tgz")

# GET EXECUTEABLE GEMFIRE/GFSH
cd $VMWARE_GEMFIRE_TARGET/bin
cp -r $GEMFIRE_FOR_REDIS_TARGET /tmp

