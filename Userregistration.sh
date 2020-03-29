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
emailRegex="^[a-z][.a-z]?+@[a-z.]+[a-z]{2,4}[.a-z]{2,4}?$"
mobileNumberRegex="^[0-9]{2}\s[0-9]{10}$"
passwordRegex="[A-Za-z0-9]{8,}"

function checkUserDetails() {
	local symbol=$1
	local pattern=$2
	if [[ $symbol =~ $pattern ]]
	then
			echo "Valid $symbol"
	else
			echo "Invalid $symbol"
	fi
}

function checkMobileNumber() {

	if [[ $mobileNumber =~ $mobileNumberRegex ]]
	then
			echo "Valid"
	else
			echo "Invalid"
	fi
}

function passwordValidation() {

	if [[ $password =~ $passwordRegex ]]
        then
                        echo "Valid"
        else
                        echo "Invalid"
        fi

}
checkUserDetails $firstName $firstNameRegex
checkUserDetails $lastName $lastNameRegex
checkUserDetails $email	$emailRegex
checkMobileNumber
passwordValidation
