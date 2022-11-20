#!/bin/bash


read -p "Enter name for bucket : " bName

aws s3 mb s3://$bName
