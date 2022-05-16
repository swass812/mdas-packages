TCE_PACKAGE_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)

PATH=$TCE_PACKAGE_DIR/bin:$PATH

export TCE_VERSION=$(tanzu uc version)

unset TCE_PACKAGE_DIR
