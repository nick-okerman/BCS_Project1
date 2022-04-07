#!/bin/bash

# Print free memory and save it to ~/backups/freemem/free_mem.txt
free -h > ~/backups/freemem/free_mem.txt

# Print disk usage and saves it to ~/backups/diskuse/disk_use.txt
du -h >> ~/backups/diskuse/disk_usage.txt

# lists all open files and saves it to~/backups/openlist/open_list.txt
lsof > ~/backups/openlist/open_list.txt

# Print file system disk space and saves it to~/backups/freedisk/free_disk.txt
df -h >> ~/backups/freedisk/free_disk.txt