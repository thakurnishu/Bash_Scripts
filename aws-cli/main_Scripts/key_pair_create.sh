#!/bin/bash

read -p "Enter Key Name: " KeyN

aws ec2 create-key-pair --key-name $KeyN --query 'KeyMaterial' --output text > $KeyN.pem
