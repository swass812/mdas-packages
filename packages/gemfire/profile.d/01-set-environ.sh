
# Environment Set Up (Create Environment Variables)

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)/gemfire

GEMFIRE_FOR_REDIS_TARGET=$PROJECT_DIR/gemfire-for-redis-apps-1.0.1
VMWARE_GEMFIRE_TARGET=$PROJECT_DIR/vmware-gemfire-9.15.0

PATH=$VMWARE_GEMFIRE_TARGET/bin:$PATH
