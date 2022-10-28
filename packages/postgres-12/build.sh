#!/bin/bash

set -x
set -eo pipefail
PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)"; pwd)

mkdir -p $PROJECT_DIR/test-from-postgres