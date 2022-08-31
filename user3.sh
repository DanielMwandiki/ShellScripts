#!/bin/bash

# Display the UID of the user executing the script
# Display if the user is the Dan  user

#Display the UID
echo "Your UID is ${UID}"

# only display if he UID does not match 1000

UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID does not match ${UID_TO_TEST_FOR}"
	exit 1
fi

# Display the username
USER_NAME=$(id -un)

#Test if the command succeeded

if [[ "${?}" -ne 0 ]]
then
	echo 'The id command did not execute succesfully'
	exit 1
fi
echo "Your username is ${USER_NAME}"

# You can use a string test conditional

USER_NAME_TO_TEST_FOR='dan'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then 
	echo "Your username matches ${USER_NAME_TO_TEST_FOR}"
fi

# Test for not equal

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
	echo "Your username does not match ${USER-NAME_TO_FOR}"
	exit 1
fi

exit 0
