#!/bin/bash
ares=`yad --title="Disk Configuration System" --form --field="Select operation":CB '!Disk Usage!Disk Partition!File System Type!File System Inodes'`
set -- "$ares" 
IFS="|"; 
declare -a Array=($*);
inpt="${Array[@]}"
if [ $inpt == "Disk Usage" ]; then
`df -a > dfus`
`yad --width=500 --height=400 --title="Disk Usage" --text-info --filename=dfus`
fi

if [ $inpt == "Disk Partition" ]; then
`fdisk -l > dfus`
`yad --width=500 --height=400 --title="Disk Partition" --text-info --filename=dfus`
fi

if [ $inpt == "File System Type" ]; then
`df -T > dfus`
`yad --width=500 --height=400 --title="File System Type" --text-info --filename=dfus`
fi

if [ $inpt == "File System Inodes" ]; then
`df -i > dfus`
`yad --width=500 --height=400 --title="File System Inodes" --text-info --filename=dfus`
fi

