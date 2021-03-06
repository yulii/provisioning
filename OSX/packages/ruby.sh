#!/bin/sh
set -eu

CWD=$(pwd)
SWD=$(cd $(dirname $0) && pwd)

# trap
trap 'echo -e "\nabort!" ; exit 1' 1 2 3 15

# . $SWD/../function/*.sh

[ exists_brew() -ne 0 ] && echo "NG"

brew update
brew install openssl readline rbenv ruby-build

rbenv install 2.2.3
rbenv global 2.2.3

rbenv rehash

