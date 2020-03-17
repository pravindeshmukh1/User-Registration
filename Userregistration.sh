#!/bin/bash -x
shopt -s extglob

echo "Welcome to the User Registration "


read -p "Enter the First Name :- " firstName

firstNameRegex="^[A-Z][A-Za-z]{3,}$"

function checkFirstName() {

	if [[ $firstName =~ $firstNameRegex ]]
	then
			echo "Valid"
	else
			echo "Invalid"
	fi
}
checkFirstName
