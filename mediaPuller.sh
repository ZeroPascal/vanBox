#!/bin/bash

#Polls for number of servers
echo 'Welcome to Puller'
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


while true
do
    read -p 'Folder Name: ' FOLDER_NAME  
    echo $N
    break
    
done
echo 'mediaPuller Away!'
echo '-----------------------'
while true
do
    if [[ $N -gt 0 ]]
    then 
        ID=$(($N+100))
        echo 'Connecting to mBox '$ID
       #mkdir $folderPath/$ID
        scp prg@192.168.15.$ID:/Applications/Mbox/Media/$FOLDER_NAME/* .
        echo  $ID' Done'
        N=$(( $N - 1 ))
    else
        break
    fi
done
Footer
