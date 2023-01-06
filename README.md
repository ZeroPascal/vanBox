# vanBox
Quick Scripts for mbox workflow

Tasks that require manipulating files, such as placing content on a server or grabbing all server settings are cumbersome and time consuming. This document outlines the basic setup for automation tools created to manipulate files from the iMac. These programs are based on tools inside SSH, mainly the SCP protocol. Its core requirements are: SSH enabled on all machines, SSH Key Authorization, and a consistent ip schema and usernames across all servers. 

These scrips are (currently) written for mBox schema, thusly usernames is set to prg and for reasons ip schema is set to 192.168.11.Server_ID [100s]. Feel free to fork this repo and modify to your liking. 

The ssh-copy.sh and sshConfig.sh scripts are intented to help setup your automated workflow.
