#!/bin/sh

function exists_brew() {
  [ -x /usr/local/bin/brew ] && return 0
  echo "brew: command not found"
  return 1
}

# sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
