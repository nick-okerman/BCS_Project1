#!/bin/bash

clear
echo "Roll the Dice"
sleep 1
clear
echo "      ,--.--._  "
echo "-----/ _, \___) "
echo "       / _/____)"
echo "       \//(____)"
echo "-----\     (__) "
echo "       -----    "
sleep 0.5
clear
echo "                "
echo "     ,--.--._   "
echo "----/ _, \___)  "
echo "      / _/____) "
echo "      \//(____) "
echo "----\     (__)  "
echo "      -----     "
sleep 0.5
clear
echo "      ,--.--._  "
echo "-----/ _, \___) "
echo "       / _/____)"
echo "       \//(____)"
echo "-----\     (__) "
echo "       -----    "
sleep 0.5
clear
echo "                "
echo "     ,--.--._   "
echo "----/ _, \___)  "
echo "      / _/____) "
echo "      \//(____) "
echo "----\     (__)  "
echo "      -----     "
sleep 0.5
clear
echo "    _______       "
echo "---/   ____)____  "
echo "          ______) "
echo "          _______)"
echo "         _______) "
echo "---.__________)   "
sleep 0.5
clear

r=$((RANDOM % 6 + 1))
if [ "$r" = "1" ]
then
echo "+-----+"
echo "|     |"
echo "|  o  |"
echo "|     |"
echo "+-----+"
elif [ "$r" = "2" ]
then
echo "+-----+"
echo "|    o|"
echo "|     |"
echo "|o    |"
echo "+-----+"
elif [ "$r" = "3" ]
then
echo "+-----+"
echo "|    o|"
echo "|  o  |"
echo "|o    |"
echo "+-----+"
elif [ "$r" = "4" ]
then
echo "+-----+"
echo "|o   o|"
echo "|     |"
echo "|o   o|"
echo "+-----+"
elif [ "$r" = "5" ]
then
echo "+-----+"
echo "|o   o|"
echo "|  o  |"
echo "|o   o|"
echo "+-----+"
elif [ "$r" = "6" ]
then
echo "+-----+"
echo "|o   o|"
echo "|o   o|"
echo "|o   o|"
echo "+-----+"
fi
