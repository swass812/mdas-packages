#!/bin/bash

# Runs BEFORE profile.d (Executions)
set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)"; pwd)

HOMEBREW_TARGET=$PROJECT_DIR/homebrew/Homebrew

mkdir -p $PROJECT_DIR/homebrew

# INSTALL & UNPACK
curl -o $HOMEBREW_TARGET.tgz https://github.com/Homebrew/brew/tarball/master
