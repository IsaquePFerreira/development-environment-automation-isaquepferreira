#!/usr/bin/env bash

# Projects folder
DEFAULT_PROJECTS_FOLDER="$HOME/Projects"

# Template folder
TEMPLATE_FOLDER=$HOME/.dea/templates

# languages list
languages='1 - Bash
2 - JavaScript'

# DEFAULT_PROJECTS_FOLDER exists?
[[ ! -d $DEFAULT_PROJECTS_FOLDER ]] && echo 'Default directory not found!' && exit 1

# Create new project
# project name
read -p 'Project name: ' project_name
[[ -z $project_name ]] &&  echo 'Empty project name!' && exit 1
PROJECT_FOLDER=$DEFAULT_PROJECTS_FOLDER/$project_name
# create project folder
mkdir -p $PROJECT_FOLDER
# select a language
echo 'Project language:'
echo "$languages"
read lang
case $lang in
	1) type_project='bash';;
	2) type_project='javascript';;
	*) echo 'Invalid or empty value' && exit 1;
esac
# create basic files
if [[ $type_project == 'bash' ]]; then
	cp -r $TEMPLATE_FOLDER/$type_project/* $PROJECT_FOLDER/
	cp $TEMPLATE_FOLDER/README.md $PROJECT_FOLDER/
	# Open in default editor
	$EDITOR $PROJECT_FOLDER/main.sh
elif [[ $type_project == 'javascript' ]]; then
	cp -r $TEMPLATE_FOLDER/$type_project/* $PROJECT_FOLDER/
	cp $TEMPLATE_FOLDER/README.md $PROJECT_FOLDER/
	# Open in default editor
	$EDITOR $PROJECT_FOLDER/main.js
fi

