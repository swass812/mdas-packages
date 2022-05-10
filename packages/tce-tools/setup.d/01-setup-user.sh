#!/bin/bash

set -x
set -eo pipefail

mkdir -p /opt/packages/tce-tools/tce-0.11.0

tar -C /opt/packages/tce-tools/tce-0.11.0 --strip-components 1 -xf /opt/packages/tce-tools/tce-0.11.0.tar.gz

mkdir -p $HOME/.config

rm -rf $HOME/.config/tanzu-plugins

ln -s /opt/packages/tce-tools/tce-0.11.0/default-local $HOME/.config/tanzu-plugins

rm -rf /opt/packages/tce-tools/bin

mkdir -p /opt/packages/tce-tools/bin

ln -s /opt/packages/tce-tools/tce-0.11.0/tanzu /opt/packages/tce-tools/bin/tanzu 

/opt/packages/tce-tools/bin/tanzu plugin install all
