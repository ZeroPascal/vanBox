#!/bin/bash

#Polls for number of servers
while true
do
    read -p 'Number of Severs: ' N 
    if [ ${N//[0-9]/} ] || [ $N -lt 1 ]
        then 
            echo "Invalid";
        else 
            break
    fi    
    
done

# Path and name of folder created to put plist folders in, uses time to second to ensure new folder each time.
folderPath=~/Desktop/pLists-$(date +%F)_$(date +%H%M%S)

# Makes the folder to put plist folders in
mkdir $folderPath

while true
do
    if [[ $N -gt 0 ]]
    then 
        ID=$(($N+100))
        echo 'Connecting to mBox '$ID
        mkdir $folderPath/$ID
        scp prg@192.168.11.$ID:/Applications/Mbox/*.plist $folderPath/$ID
        echo  $ID' Done'
        N=$(( $N - 1 ))
    else
        break
    fi
done