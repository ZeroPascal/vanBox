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

echo 'Folder Maker Away!'
echo '-----------------------'

while true
do
    if [[ $N -ge $MIN ]]
    then
        echo 'Connecting to Sever: '$(($N+100))
         ID=$(($N+100))    
    
    cat ~/.ssh/id_rsa.pub | ssh prg@192.168.15.$ID "cat >> ~/.ssh/authorized_keys"
 
        N=$(( $N - 1 ))
    else
        break
    fi
done

