#!/bin/bash
#############
# File name: run.sh
# Purpose: When executed, this will copy a complex password to the user's clipboard
# Created by: Christophe El-Khoury (thelebdev)
# Created at: 24-02-2021, Byblos - Lebanon
###########

# Array holding all of the characters used in the password
DICTIONARY=(a b c d e f g h i j k l m n o p q r s t u v w x y n z A B C D E F G H I J K L M N O P Q R S T U V W X Y N Z ! \" \# \$ \% \& \' \( \) \* \+ \, \- \. \/ \: \; \< \= \> \? \@ \[ \\ \] \^ \_ \` \{ \| \} \~ )

# User's input, the password's length
PASSWORD_LENGTH=$1

###
# This function will validate a user's confirmation choice
###
function VALIDATE_CONFIRMATION {
    read CONFIRMATION
    echo $CONFIRMATION
    if [[ $CONFIRMATION != "y" ]] && [[ $CONFIRMATION != "Y" ]]
    then
        echo "Aborting..."
        exit 1
    fi
}

if [ -z $PASSWORD_LENGTH ]
then
    PASSWORD_LENGTH=14
    echo "Generating password of length ${PASSWORD_LENGTH} (default)"
else
    echo "Generating password of length ${PASSWORD_LENGTH} (custom)"
fi


if [ $PASSWORD_LENGTH -lt 6 ]
then
    echo "You are generating a weak password ($PASSWORD_LENGTH characters). Are you sure you want to continue? (y/n)"
    VALIDATE_CONFIRMATION
fi

if [ $PASSWORD_LENGTH -gt 30 ]
then
    echo "You are generating a very long password ($PASSWORD_LENGTH characters). Are you sure you want to continue? (y/n)"
    VALIDATE_CONFIRMATION
fi


PASSWORD=""

for (( c=0; c<$PASSWORD_LENGTH; c++ ))
do
	PASSWORD=$PASSWORD${DICTIONARY[$RANDOM % ${#DICTIONARY[@]}]}
done
echo "Password copied in your clipboard"
echo $PASSWORD | pbcopy
