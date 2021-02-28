DOTFILES_DIR := $(shell echo $(HOME)/.dotfiles)
SHELL        := /bin/sh
UNAME        := $(shell uname -s)
USER         := $(shell whoami)

.PHONY: macos

stage1: brew shell workspace
stage2: tmux nodejs neovim python
stage3: dotfiles
stage4: finalize

macos:
	bash ./macos/defaults.sh

brew:
	/usr/bin/ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew bundle --file=$(DOTFILES_DIR)/macos/Brewfile
	brew analytics off

shell:
	# Set zsh from brew as default shell
	chmod go-w '/usr/local/share'
	chmod -R go-w '/usr/local/share/zsh'
	sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
	# Install base16-shell
	git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

finalize:
	compaudit | xargs chmod g-w

workspace:
	mkdir -p ~/Workspace/fundraiseup
	mkdir -p ~/Workspace/spike

dotfiles:
	./dotbot-install

nodejs:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh
	source $(HOME)/.nvm/nvm.sh
	nvm install --lts

python:
	curl https://pyenv.run | bash

neovim:
	pip3 install neovim

.ONESHELL:
tmux:
	mkdir ~/tmux-install
	cd ~/tmux-install
	# openssl
	curl -OL https://www.openssl.org/source/openssl-1.1.1j.tar.gz
	tar xzf openssl-1.1.1j.tar.gz
	cd openssl-1.1.1j
	./Configure darwin64-x86_64-cc --prefix=/usr/local --o
	make CFLAGS='-I/usr/local/ssl/include'
	make test
	sudo make install
	cd ..
	# libevent
	curl -OL https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz
	tar xzf libevent-2.1.12-stable.tar.gz
	cd libevent-2.1.12-stable
	./configure
	make
	sudo make install
	# tmux 3.2-rc
	curl -OL https://github.com/tmux/tmux/releases/download/3.2-rc/tmux-3.2-rc3.tar.gz
	tar xzf tmux-3.2-rc3.tar.gz
	cd tmux-3.2-rc3
	LDFLAGS="-L/usr/local/lib" CPPFLAGS="-I/usr/local/include" LIBS="-lresolv" ./configure --prefix=/usr/local
	make
	sudo make install
