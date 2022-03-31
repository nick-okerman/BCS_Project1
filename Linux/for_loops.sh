#!/bin/bash

# Variables
states=(
	'California'
	'Hawaii'
	'Idaho'
	'New York'
	'D.C.'
)

list=`ls`

f777=`find /home -type f -perm 777`

# For Loop State
for state in ${states[@]}
do
  if [ $state == 'California' ]
  then
	echo "Cali is the Best!"
  else
	echo "California is just okay."
  fi
done

echo ""

# For Loop Numbers
for num in {0..9}
do
  if [ $num = '3' ] || [ $num = '5' ] || [ $num = '7' ]
  then
	echo $num
  fi
done

echo ""

# For Loop Files
for file in ${list}
do
  ls -ls $file
done

echo ""

# For Loop 777s
for ex in ${f777}
do
  ls -ls $ex
done
