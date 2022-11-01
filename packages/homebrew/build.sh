#!/bin/bash

# Runs BEFORE profile.d (Executions)
set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)"; pwd)

HOMEBREW_TARGET=$PROJECT_DIR/hombrew/Hombrew

mkdir -p $PROJECT_DIR/hombrew

# INSTALL & UNPACK
curl -o $HOMEBREW_TARGET.tgz https://github.com/Homebrew/brew/tarball/master
