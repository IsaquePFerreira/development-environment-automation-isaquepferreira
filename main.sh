#!/usr/bin/env bash

# Projects folder
DEFAULT_PROJECT_FOLDER="$HOME/Projects"

# languages list
languages='1 - Bash
2 - JavaScript'

# DEFAULT_PROJECT_FOLDER exists?
[[ ! -d $DEFAULT_PROJECT_FOLDER ]] && echo 'Default directory not found!' && exit 1

# Create new project
# project name
read -p 'Project name: ' project_name
[[ -z $project_name ]] &&  echo 'Empty project name!' && exit 1
# select a language
echo 'Project language:'
echo "$languages"
read lang
case $lang in
	1) type_project='bash';;
	2) type_project='javascript';;
	*) echo 'Invalid or empty value' && exit 1;
esac

