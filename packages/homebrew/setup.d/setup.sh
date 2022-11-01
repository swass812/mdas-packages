#!/bin/bash

set -x
set -eo pipefail

PROJECT_DIR=$(cd "$(dirname $BASH_SOURCE)"; pwd)/homebrew

HOMEBREW_TARGET=$PROJECT_DIR/homebrew

cd $PROJECT_DIR
tar xz --strip 1 HOMEBREW_TARGET.tgz
eval "$(homebrew/bin/brew shellenv)" # ??
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"

# mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
# eval "$(homebrew/bin/brew shellenv)"
# brew update --force --quiet
# chmod -R go-w "$(brew --prefix)/share/zsh"
# remove .tgz