#!/bin/bash

set -x
set -eo pipefail

TCE_PACKAGE_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)

mkdir -p $TCE_PACKAGE_DIR/archive

tar -C $TCE_PACKAGE_DIR/archive --strip-components 1 -xf $TCE_PACKAGE_DIR/tce.tar.gz

mkdir -p $HOME/.config

rm -rf $HOME/.config/tanzu-plugins

ln -s $TCE_PACKAGE_DIR/archive/default-local $HOME/.config/tanzu-plugins

rm -rf $TCE_PACKAGE_DIR/bin

mkdir -p $TCE_PACKAGE_DIR/bin

ln -s $TCE_PACKAGE_DIR/archive/tanzu $TCE_PACKAGE_DIR/bin/tanzu 

$TCE_PACKAGE_DIR/bin/tanzu plugin install all
