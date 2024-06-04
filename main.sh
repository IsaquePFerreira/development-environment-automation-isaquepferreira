#!/usr/bin/env bash

# Projects folder
DEFAULT_PROJECT_FOLDER="$HOME/Projects"

# DEFAULT_PROJECT_FOLDER exists?
if [[ ! -d $DEFAULT_PROJECT_FOLDER ]]; then
	mkdir $DEFAULT_PROJECT_FOLDER
fi
