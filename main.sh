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
NEW_FOLDER=$DEFAULT_PROJECT_FOLDER/$project_name
# create project folder
mkdir -p $NEW_FOLDER
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
	echo '#!/usr/bin/bash' >> $NEW_FOLDER/main.bash
	chmod +x $NEW_FOLDER/main.bash
elif [[ $type_project == 'javascript' ]]; then
	> $NEW_FOLDER/main.js
	> $NEW_FOLDER/index.html
fi

