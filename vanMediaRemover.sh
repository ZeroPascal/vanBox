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
echo 'vanMediaRemover Away!'
echo '-----------------------'

mkdir $FOLDER_NAME
while true
do
    if [[ $N -ge $MIN ]]
    then
        echo 'Connecting to Sever: '$(($N+100))
         ID=$(($N+100))    
    
    echo rm -r $MEDIA_DIRECTORY$FOLDER_NAME | ssh prg@192.168.11.$ID
  #  scp -r $FOLDER_NAME pi@192.168.11.$ID:$MEDIA_DIRECTORY
  #  scp *SERVER-$ID* prg@192.168.11.$ID:$MEDIA_DIRECTORY$FOLDER_NAME
 
        N=$(( $N - 1 ))
    else
        break
    fi
done

rm -r $FOLDER_NAME

