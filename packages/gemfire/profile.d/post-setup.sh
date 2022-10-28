# Runs AFTER setup.d (Maintains Defintions)

## Copied from ../setup./
PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)/gemfire # /opt/packages/gemfire/gemfire
VMWARE_GEMFIRE_TARGET=$PROJECT_DIR/vmware-gemfire-9.15.0


PATH=$VMWARE_GEMFIRE_TARGET/bin:$PATH
