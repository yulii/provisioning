#!/bin/sh
set -eu

CWD=$(pwd)
SWD=$(cd $(dirname $0) && pwd)

# trap
trap 'echo -e "\nabort!" ; exit 1' 1 2 3 15

. $SWD/../functions/*.sh

# assertion {{{

assert_brew_installed

# }}}

brew update
brew install haskell-stack

stack update
stack setup 7.10.2
stack install cabal-install
