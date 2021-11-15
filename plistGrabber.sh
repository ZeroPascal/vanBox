#!/bin/bash

#echo 'Enter number of servers:'




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
        mount -t smbfs //prg:mbox@192.168.11.$ID/mbox%20$ID/Applications/Mbox/ ~/Desktop/prg
        mkdir ~/Desktop/mbox/$ID
        cp ~/Desktop/prg/*.plist ~/Desktop/mbox/$ID
        #mount -t smbfs //prg:mbox@192.168.11.$ID
        #rm ~/Desktop/prg/Desktop/Mbox\ Studio\ v444\ r10542*
        #cp ./Mbox* ~/Desktop/prg/Desktop/
        #cp ./Mbox* ~/Desktop/prg/Desktop/
        diskutil unmount ~/Desktop/prg
        echo  $ID' Done'
        N=$(( $N - 1 ))
    else
        break
    fi

#open 'smb://prg:mbox@192.168.11.101/prg/'
#mount -t smbfs //prg:mbox@192.168.11.101/prg ~/Desktop/prg

#echo 'Connected!'
#cp ./Mbox* ~/Desktop/prg/Desktop/

#diskutil unmount ~/Desktop/prg

done