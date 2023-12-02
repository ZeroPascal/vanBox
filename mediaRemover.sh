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
echo 'mediaRemover Away!'
echo '-----------------------'

while true
do
    read -p 'Keep folder and only remove contents? Otherwise it will delete the entire folder!' yn
    case $yn in
        [Yy]* ) echo 'Only '$FOLDER_NAME' content will be removed, folder will remain'; break;;
        [Nn]* ) echo 'Deleteing entire folder'; break;;
        * ) echo 'Please answer yes or no.';;
    esac
done
while true
do
    if [[ $N -ge $MIN ]]
    then
        echo 'Connecting to Sever: '$(($N+100))
        ID=$(($N+100))    

        case $yn in 
            [Yy]* ) echo rm $MEDIA_DIRECTORY$FOLDER_NAME/* | ssh prg@192.168.11.$ID;;
            [Nn]* ) echo rm -r $MEDIA_DIRECTORY$FOLDER_NAME | ssh prg@192.168.11.$ID;;
        esac

        N=$(( $N - 1 ))
    else
        break
    fi
done



