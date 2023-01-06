#!/bin/bash

MIN=1
MEDIA_DIRECTORY=/Applications/Mbox/Media/

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
    read -p 'Folder Name: ' FOLDER_NAME  
    echo $N
    break
    
done
echo 'mediaFolderRemover Away!'
echo '-----------------------'


while true
do
    if [[ $N -ge $MIN ]]
    then
        echo 'Connecting to Sever: '$(($N+100))
         ID=$(($N+100))    
    
    echo rm -r $MEDIA_DIRECTORY$FOLDER_NAME | ssh prg@192.168.11.$ID

 
        N=$(( $N - 1 ))
    else
        break
    fi
done



