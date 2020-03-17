#!/bin/bash -x
shopt -s extglob

echo "Welcome to the User Registration "


read -p "Enter the last Name :- " lastName

firstNameRegex="^[A-Z][A-Za-z]{2,}$"
lastNameRegex="^[A-Z][A-Za-z]{2,}$"

function checkUserName() {

	if [[ $lastName =~ $lastNameRegex ]]
	then
			echo "Valid"
	else
			echo "Invalid"
	fi
}
checkUserName
