#!/bin/bash

set -x
set -eo pipefail

TCE_TOOLS_URL=https://github.com/vmware-tanzu/community-edition/releases/download/v0.11.0/tce-linux-amd64-v0.11.0.tar.gz

PACKAGE_DIR=$(cd "$(dirname $0)"; pwd)

curl -sL --fail $TCE_TOOLS_URL -o $PACKAGE_DIR/tce-0.11.0.tar.gz
