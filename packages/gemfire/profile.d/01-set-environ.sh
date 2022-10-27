export PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)/gemfire

export GEMFIRE_FOR_REDIS_TARGET=$PROJECT_DIR/gemfire-for-redis-apps-1.0.1
export VMWARE_GEMFIRE_TARGET=$PROJECT_DIR/vmware-gemfire-9.15.0

PATH=$VMWARE_GEMFIRE_TARGET/bin:$PATH
