#!/bin/bash -x
shopt -s extglob

echo "Welcome to the User Registration "

echo "Enter the first, last and email id: - "
read firstName lastName email

firstNameRegex="^[A-Z][A-Za-z]{2,}$"
lastNameRegex="^[A-Z][A-Za-z]{2,}$"
emailRegex="^[a-z][.a-z]?+@[a-z.]+[a-z]{2,4}[.a-z]{2,4}?$"

function checkUserName() {

	if [[ $1 =~ $2 ]]
	then
			echo "Valid $1"
	else
			echo "Invalid $1"
	fi
}
checkUserName $firstName $firstNameRegex
checkUserName $lastName $lastNameRegex
checkUserName $email	$emailRegex
