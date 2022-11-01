#!/bin/bash

set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)"; pwd)/homebrew

cd $PROJECT_DIR

PATH=$PROJECT_DIR/bin:$PATH