TCE_PACKAGE_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)

PATH=$TCE_PACKAGE_DIR/bin:$PATH

unset TCE_PACKAGE_DIR