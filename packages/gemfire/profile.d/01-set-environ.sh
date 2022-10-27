#!/bin/bash

# Environment Set Up (Create Environment Variables)

set -x
set -eo pipefail


export PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)
# $HOME

export GEMFIRE_FOR_REDIS_TARGET=$HOME/gemfire/gemfire-for-redis-apps-1.0.1
export VMWARE_GEMFIRE_TARGET=$HOME/gemfire/vmware-gemfire-9.15.0

export GEMFIRE_HOME=VMWARE_GEMFIRE_TARGET/bin/gfsh

PATH=$VMWARE_GEMFIRE_TARGET/bin:$PATH
