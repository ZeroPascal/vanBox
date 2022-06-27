#!/bin/bash

while true
do
    read -p 'Create Local SSH Key? ' yn
    case $yn in
        [Yy]* ) echo 'Press enter throug the following'; ssh-keygen; echo 'Good Job. Now...' break;;
        [Nn]* ) break;;
        * ) echo 'Please answer yes or no.';;
    esac
done

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

while true
do
    if [[ $N -gt 0 ]]
    then 
        ID=$(($N+100))
        echo 'Connecting to mBox '$ID
        ssh-copy-id prg@192.168.11.$ID
        echo  $ID' Done'
        N=$(( $N - 1 ))
    else
        break
    fi
done