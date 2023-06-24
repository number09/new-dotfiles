SHELL = /bin/zsh -xeuo pipefail

help:
	@echo "help test"

init:
	@sh scripts/init.sh
	@brew bundle --file ./apps/homebrew/Brewfile-tap
	@brew update

mac_setup:
	@sh scripts/mac_setup.sh

install-home:
	@echo "home"
	@brew bundle --file ./apps/homebrew/Brewfile-home

install-office:
	@echo "office"
	@brew bundle --file ./apps/homebrew/Brewfile-office

install-common:
	@echo "common"
	@brew bundle --file ./apps/homebrew/Brewfile-common
	@sh scripts/setup_all.sh && source ~/.zshrc && sh scripts/after_setup_all.sh
