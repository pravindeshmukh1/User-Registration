#!/bin/bash -x
shopt -s extglob

echo "Welcome to the User Registration "

echo "-----Enter the User Details----- "
read -p "Enter the First Name:-" firstName
read -p "Enter thr Last Name:- " lastName
read -p "Enter the Email Id:- " email
read -p "Enter the Mobile Numebr:- " mobileNumber
read -p "Enter the Password :- " password


firstNameRegex="^[A-Z][A-Za-z]{2,}$"
lastNameRegex="^[A-Z][A-Za-z]{2,}$"
emailRegex="^[a-z][.a-z0-9]+@[a-z.]+[a-z]{2,4}[.a-z]{2,4}?$"
mobileNumberRegex="^[0-9]{2}\s[0-9]{10}$"

minimumnCharacterRegex="^[A-Za-z0-9]{8,}$"
upperCaseCharacterRegex=".*[A-Z].*$"
atLeastOneNumericNumber=".*[0-9].*$"

function checkUserDetails() {

	if [[ $1 =~ $2 ]]
	then
			echo "Valid"
	else
			echo "Invalid"
	fi
}
checkUserDetails $firstName $firstNameRegex
checkUserDetails $lastName $lastNameRegex
checkUserDetails $email	$emailRegex

function checkMobileNumber() {

	if [[ $mobileNumber =~ $mobileNumberRegex ]]
	then
			echo "Valid"
	else
			echo "Invalid"
	fi
}
checkMobileNumber


function passwordValidation() {

	if [[ $password =~ $minimumnCharacterRegex && $password =~ $upperCaseCharacterRegex && $password =~ $atLeastOneNumericNumber ]]
        then
                        echo "Valid"
        else
                        echo "Invalid"
        fi
}
passwordValidation
