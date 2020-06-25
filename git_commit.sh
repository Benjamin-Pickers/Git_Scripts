#!/bin/bash -e
read -p "Are you adding specfic files only? (y/n) " ans

if [[ "$ans" == "Y" ]] || [[ "$ans" == "y" ]]
then
	while [[ "$ans" == "y" ]] || [[ "$ans" == "Y" ]]
	do
		read -p "File to add: " file
		if [[ -e "$file" ]]
		then
			git add $file
		else
			echo "File doesn't exists"
			exit 1
		fi

		read -p "Do you want to add another file? (y/n) " ans
	done
else
	git add .
fi

read -p "Commit description: " comMessage
git commit -m "$comMessage"

read -p "Push to master? " ans

if [[ "$ans" == "y" ]] || [[ "$ans" == "Y" ]]
then
	git push origin
else
	echo "Files commited to local HEAD but not pushed to remote repository"
	exit 1
fi


