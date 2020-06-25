#!/bin/bash -e

if [[ -n "$1" ]]
then
	echo "$1" >> README.md
else
	echo "Created repository" >> README.md
fi

git init
git add .

read -p "Would you like to add a description for the commit? " ans

if [[ "$ans" == "Y" ]] || [[ "$ans" == "y" ]]
then
	read -p "Commit description: " comMessage
	git commit -m "$comMessage"
else
	git commit -m "First commit"
fi

read -p "Remote origin link: " link
git remote add origin $link
git push -u origin master

