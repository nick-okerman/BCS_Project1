#!/bin/bash

# Create if statement to check if script was run using sudo

if [ $UID -ne 0 ]
then
  echo "Please run this script with sudo."
  exit
fi

# variables

output=#HOME/research/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)
execs=$(find /home -type f -perm 777 2> /dev/null)

# if, then or else statement, create the research directory if not then or else

if [ ! -d $HOME/research ]
then
mkdir $HOME/research
fi

# Output file and clear

if [ -f $output ]
then
 rm $output
fi

echo "A Quick System Audit Script" >> $output
date >> $output
echo "" >> $output

# Machine type and user

echo "Machine Type Info" >> $output
echo "$MACHTYPE \n"  >> $output
echo -e "Uname info: $(uname -a) \n" >> $output

# Ip Info

echo -e "IP Info:" >> $output
echo -e "$ip \n" >> $output

# Additional computer info hostname and server along with memory

echo "Hostname: $(hostname -s) \n" >> $output
echo "DNS Servers:" >> $output
cat /etc/resolv.conf >> $output
echo -e "\nMemory Info:" >> $output
free >> $output
echo -e "\nCPU Info:" >> $output
lscpu | grep CPU >> $output
echo -e "\nDisk Usage:" >> $output
df -H | head -2 >> $output
echo -e "\nWho is logged in: \n $(who -a) \n" >> $output
echo -e "\nexec Files:" >> $output
echo  $execs >> $output
echo -e "\nTop 10 Processes" >> $output
ps aux --sort -%mem | awk {'print $1, $2, $3, $4, $11'} | head >> $output
fi
