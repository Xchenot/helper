#!/bin/bash

echo "git configuration script"

# Lists the files in your .ssh directory, if they exist
echo "your SSH Key:"
ls -al ~/.ssh

echo "Do you want to create new one ?(y/n)"
read createSSHKey
if [ $createSSHKey = "n" ]
then
    cat ~/.ssh/id_rsa.pub | clip
    echo "The Key is copy you can past it"
fi
if [ $createSSHKey = "y" ]
then
    echo "this function is not implemented for the moment ;)"
    echo "What is you email address ? "
    read email
    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
fi

read
