#!/usr/bin/env bash

# This file is largely based on https://github.com/mathiasbynens/dotfiles/blob/main/bootstrap.sh
# Its name is not bootstrap so codespaces doesn't run it automatically, but it is still useful to 

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function doIt() {
	echo "DOING IT"
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "not_bootstrap.sh" \
		--exclude "README.md" \
		--exclude "brew_install.txt" \
		-avh --no-perms . ~;
	# source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
