#!/bin/bash

set -x
set -eo pipefail

TCE_TOOLS_URL=https://github.com/vmware-tanzu/community-edition/releases/download/v0.11.0/tce-linux-amd64-v0.11.0.tar.gz

PACKAGE_DIR=$(cd "$(dirname $0)"; pwd)

curl -sL --fail $TCE_TOOLS_URL -o /tmp/tce-tools.tar.gz

mkdir /tmp/tce-tools

tar -C /tmp/tce-tools --strip-components 1 -xf /tmp/tce-tools.tar.gz

mkdir $PACKAGE_DIR/bin

cd /tmp/tce-tools

cp tanzu $PACKAGE_DIR/bin

HOME=$PACKAGE_DIR
PATH=$PACKAGE_DIR/bin:$PATH

export ALLOW_INSTALL_AS_ROOT=true

./install.sh
