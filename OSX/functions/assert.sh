#!/bin/sh
set -eu

function assert_brew_installed() {
  [ -x /usr/local/bin/brew ] && return 0
  echo "brew: command not found"
  exit 1
}

