#!/bin/bash

echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_"
echo " AMAZON LINUX (ami-id) : ami-09d3b3274b6c5d4aa "
echo " UBUNTU (ami-id)       : ami-08c40ec9ead489470 "
echo " CENTOS 7 (ami-id)     : ami-002070d43b0a4f171 "
echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_"

read -p "Enter Image(ami-id) Id : " amid

echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_"
echo " 0.6GiB : t1.micro "
echo " 1GiB   : t2.micro "
echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_"

read -p "Instance Type : " instype


read -p "Keypair name : " keyname
read -p "Security group name : " sgname

aws ec2 run-instances --image-id $amid --count 1 --instance-type $instype --key-name $keyname --security-groups $sgname

