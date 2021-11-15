#!/bin/bash

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

echo $(($N+100))
while true
do
    if [[ $N -gt 0 ]]
    then 
        ID=$(($N+100))
        echo 'Connecting to mBox ...'$ID
        mount -t smbfs //prg:mbox@192.168.11.$ID/prg/Desktop ~/Desktop/prg
        #rm ~/Desktop/prg/Desktop/Mbox\ Studio\ v444\ r10542*
        cp ./Mbox* ~/Desktop/prg/Desktop/
        
        diskutil unmount ~/Desktop/prg
        echo  $ID' Done'
        N=$(( $N - 1 ))
    else
        break
    fi


done