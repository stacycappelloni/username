#! /bin/bash
# username.sh
# Stacy Cappelloni
echo "Your username can only contain lowercase letters, digits, and the underscore character."
echo "It must start with a lowercase letter."
echo "It must contain at least 3 but no more than 12 characters."
echo "Enter a username: "
read USERNAME
while echo "$USERNAME" | egrep -v "^[abcdefghijklmnopqrstuvwxyz][abcdefghijklmnopqrstuvwxyz_0123456789]{3,12}" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
