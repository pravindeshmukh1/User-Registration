#!/bin/bash -x
shopt -s extglob

echo "Welcome to the User Registration "

echo "Enter the First, Last Name & Email id & Mobile no :- "
read firstName lastName email mobileNumber

firstNameRegex="^[A-Z][A-Za-z]{2,}$"
lastNameRegex="^[A-Z][A-Za-z]{2,}$"
emailRegex="^[a-z][.a-z]?+@[a-z.]+[a-z]{2,4}[.a-z]{2,4}?$"
mobileNumberRegex="^[0-9]{2}\s[0-9]{10}$"

function checkUserDetails() {

	if [[ $1 =~ $2 ]]
	then
			echo "Valid $1"
	else
			echo "Invalid $1"
	fi
}
checkUserDetails $firstName $firstNameRegex
checkUserDetails $lastName $lastNameRegex
checkUserDetails $email	$emailRegex

function checkMobileNumber() {

	if [[ $mobileNumber =~ $mobileNumberRegex ]]
	then
			echo "Valid $1"
	else
			echo "Invalid $1"
	fi
}
checkMobileNumber
