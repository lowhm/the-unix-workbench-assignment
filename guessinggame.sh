#!/usr/bin/env bash
echo -e "Commencing the Guessing Game!\nPlease enter a guess for the number of files in the current directory."
filecount=$(ls | wc -l)
function check {
        read guessnum
        if [[ $guessnum =~ ^-?[0-9]+$ ]]
        then
        echo "Thanks for entering a valid number, $guessnum."
        else
        echo -e "Your entry of ($guessnum) is not recognised.\nPlease re-enter a valid numerical number instead of ($guessnum)."
        check
fi
}
check
while [[ $guessnum -ne $filecount ]]
do
        if [[ $guessnum -gt $filecount ]]
        then
        echo "Your guess is higher than the number of files present, please try again."
        else
        echo "Your guess is lower than the number of files present, please try again."
        fi
        check
done
echo "Congratulations! You have made the correct guess of $guessnum file(s) present!"
