#!/bin/bash
#
# Ref:https://zenn.dev/tsukuboshi/articles/6e82aef942d9af

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# Set zsh (Default Not Change)
# chsh -s /bin/zsh


# Install Rosetta 2 for Apple Silicon
/usr/sbin/softwareupdate --install-rosetta --agree-to-license


# Install xcode
xcode-select --install > /dev/null

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null
