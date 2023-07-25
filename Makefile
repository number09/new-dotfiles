SHELL = /bin/zsh -xeuo pipefail
# Determine the architecture of the machine
# The value of the variable 'ARCH' will be 'intel' for Intel Macs and 'arm' for M1-based Macs
ARCH := $(shell uname -m)

# Specify the Homebrew installation path for Intel and M1-based Macs
INTEL_BREW_PREFIX := /usr/local
M1_BREW_PREFIX := /opt/homebrew

# Determine the Homebrew installation path based on the machine's architecture
BREW_PREFIX :=
ifeq ($(ARCH),arm64)
	BREW_PREFIX := $(M1_BREW_PREFIX)
else
	BREW_PREFIX := $(INTEL_BREW_PREFIX)
endif

# Define the 'brew' command
BREW := $(BREW_PREFIX)/bin/brew

SILENT = @


help:
	$(SILENT)echo "help test"

init:
	$(SILENT)sh scripts/init.sh
	$(SILENT)$(BREW) bundle --file ./apps/homebrew/Brewfile-tap
	$(SILENT)$(BREW) update

mac_setup:
	$(SILENT)sh scripts/mac_setup.sh

install-home:
	$(SILENT)echo "home"
	$(SILENT)$(BREW) bundle --file ./apps/homebrew/Brewfile-home

install-office:
	$(SILENT)echo "office"
	$(SILENT)$(BREW) bundle --file ./apps/homebrew/Brewfile-office

install-common:
	$(SILENT)echo "common"
	$(SILENT)$(BREW) bundle --file ./apps/homebrew/Brewfile-common
	$(SILENT)sh scripts/setup_all.sh && source ~/.zshrc && sh scripts/after_setup_all.sh
