#!/bin/bash

set -x
set -eo pipefail

TCE_PACKAGE_DIR=$(cd "$(dirname $BASH_SOURCE)"; pwd)

TCE_TOOLS_URL=https://github.com/vmware-tanzu/community-edition/releases/download/v0.11.0/tce-linux-amd64-v0.11.0.tar.gz

curl -sL --fail $TCE_TOOLS_URL -o $TCE_PACKAGE_DIR/tce.tar.gz
