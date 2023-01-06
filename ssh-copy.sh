#!/bin/bash
#The workaround for machines that do not have ssh-copy-id command in the terminal. Full credit to https://gist.github.com/nickbayley/ef2b6744b976c96db6e9 for the actual line.
MIN=1

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

echo 'SSH Config Away!'
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

