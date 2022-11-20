#!/bin/bash

read -p "Enter Security Group Name : " sg
read -p "Enter Description : " des

aws ec2 create-security-group --group-name $sg --description $des > ~/Desktop/AWS_Files/sg_ID

var=$( ( cat ~/Desktop/AWS_Files/sg_ID ) )

echo "$var"
