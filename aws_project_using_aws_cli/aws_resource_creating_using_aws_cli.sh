#!/bin/bash

###############################
#Author : Arpita Singh
#Date : 30-May-2024
#
#Version : v1
#
#Using AWS CLI to create AWS resources using Access key and Secret Access Key of IAM User.
#################################

#Creating IAM Role to Access EC2
echo "Print Created IAM Role"


# Create the IAM Role
aws iam create-role \
    --role-name Test-Role \
    --assume-role-policy-document file://Test-Role-Trust-Policy.json

# Create the Permissions Policy
aws iam create-policy \
    --policy-name AmazonEC2FullAccess \
    --policy-document file://EC2FullAccessPolicy.json

# Attach the Policy to the Role (Replace the PolicyArn with the actual one returned by the previous command)
aws iam attach-role-policy \
    --role-name Test-Role \
    --policy-arn arn:aws:iam::1238044788494:policy/EC2FullAccessPolicy
