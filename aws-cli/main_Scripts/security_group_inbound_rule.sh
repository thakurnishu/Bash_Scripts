#!/bin/bash

curl https://checkip.amazonaws.com

read -p "Enter Security Group Id : " sg
read -p "Protocol : " ptl
read -p "Enter port number : " port
read -p "Enter IP : " ip

aws ec2 authorize-security-group-ingress --group-id $sg --protocol $ptl --port $port --cidr $ip/32
