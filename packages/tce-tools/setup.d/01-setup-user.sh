#!/bin/bash

mkdir $HOME/{.cache,.config,.local}

cp -r /opt/packages/tce-tools/.cache/. $HOME/.cache/
cp -r /opt/packages/tce-tools/.config/. $HOME/.config/
cp -r /opt/packages/tce-tools/.local/. $HOME/.local/
