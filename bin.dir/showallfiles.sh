#!/usr/bin/env bash

# Toggles the visibility of hidden files in OS X Mavericks Finder

current_value=$(defaults read com.apple.finder AppleShowAllFiles 2> /dev/null)
if [ -z "$current_value" ]; then
	defaults write com.apple.finder AppleShowAllFiles true
else
	defaults delete com.apple.finder AppleShowAllFiles
fi

killall Finder

