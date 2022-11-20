#!/bin/bash

read -p "Enter Key Name : " KeyN

aws ec2 delete-key-pair --key-name $KeyN
