#!/bin/bash

if [ ! -x $(which finger) ]
then
    exit
fi

FINGER_OUTPUT=$(finger $(whoami))

if [ "$1" != 'c' ]
then
    RANDOM_NUMBER=$((RANDOM % 7 + 1))
    echo -e "\e[3${RANDOM_NUMBER}m $FINGER_OUTPUT \e[0m"
    sleep 0.05
else
    while [ true ]
    do
        RANDOM_NUMBER=$((RANDOM % 7 + 1)) 
        echo -e "\e[3${RANDOM_NUMBER}m $FINGER_OUTPUT \e[0m"
        sleep 0.05
    done
fi

# list all colors
#
#
# for i in {1..7}
# do
#      FINGER_OUTPUT=$(finger debian)
#      RANDOM_NUMBER=$((RANDOM % 7 + 1)) 
#      echo -e "\e[1;3${RANDOM_NUMBER}m $FINGER_OUTPUT \e[0m" 
#      sleep 0.1  
# done
