#!/bin/bash

# Checks for root. Exit if not. 
if [ $UID != 0 ]
then
  echo "Run script with sudo"
  exit
fi

# Current Variables
out=~/research/sys_info.txt
IP=`hostname -I`
f777=`find /home -type f -perm 777`
paths=('/etc/shadow' '/etc/passwd')


# Check if dir exists. Make dir.
if [ ! -d ~/research ]
then
  mkdir ~/research
fi

# Check if file exists. Remove old file.
if [ -f $out ]
then
  rm $out
fi

# Welcome Message
echo -e "\e[1;31mA Quick System Audit Script\e[1;m." >> $out

# Date
echo "Today is $(date +%A) the $(date +%d) of $(date +%B)." >> $out

# User
echo -e "Current User is \e[1m$USER\e[1;m" >> $out

# IP Address
echo -e "IP Address is $IP" >> $out

# Host
echo -e "Current Host is \e[1m$HOSTNAME\e[1;m" >> $out

# Machine Info
echo -e "\nMachine Type Info:" >> $out
echo $MACHTYPE >> $out

# DNS Servers
echo "DNS Servers:" >> $out
cat /etc/resolv.conf >> $out

# Memory
echo -e "\nMemory Info:" >> $out
free >> $out

# CPU
echo -e "\nCPU Info:" >> $out
lscpu | grep CPU >> $out

# Disk Space
echo -e "\nDisk Usage:" >> $out
df -H | head -2 >> $out

# Currently Logged In
echo -e "\nWho is logged in: \n $(who -a) \n" >> $out

# Executable Files
echo -e "\nexec Files:" >> $out
$f777 >> $out

# Top 10 Running Processes
echo -e "\nTop 10 Processes" >> $out
ps aux -m | awk {'print $1,$2,$3,$4,$11'} | head -11 >> $out

# Permissions of Files
echo -e "\nThe permissions for sensitive /etc files: \n" >> $out
for file in ${paths[@]}
do
  ls -lah $file >> $out
done

# sudo for each user
for user in $(ls /home)
do
  sudo -lU $user >> $out
done





# Confirms output to file
echo "Output Successful"
