#!/bin/bash

MIN=1
MEDIA_DIRECTORY=/Applications/Mbox/

while true
do
    read -p 'Number of Severs: ' N 
    if [ ${N//[0-9]/} ] || [ $N -lt 1 ]
        then 
            echo "Invalid";
        else 
            echo $N
            break
    fi    
done

while true
do
    read -p 'PList Source Path ' FOLDER_NAME  
    echo $N
    break
    
done
echo 'Plist Pusher Away!'
echo '-----------------------'

mkdir $FOLDER_NAME
while true
do
    if [[ $N -ge $MIN ]]
    then
        echo 'Pushing to Sever: '$(($N+100))
       
        ID=$(($N+100))   
        cd $FOLDER_NAME/$ID 
    
    scp *.plist prg@192.168.11.$ID:/Applications/Mbox/
 
        N=$(( $N - 1 ))
    else
        break
    fi
done

