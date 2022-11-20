#!/bin/bash

read -p "Enter Security Group Name : " sg

aws ec2 delete-security-group --group-name $sg


