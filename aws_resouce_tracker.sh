#!/bin/bash

##########################
#Author : Arpita Singh
#Date : 20-May-2024
#
#version : v1
#About Script : Here, I written the script to report the AWS Resource Usage. 
##########################

#Run the script in Debug mode
set +x 

#List S3 Buckets
echo "Print list of S3 Bucket"
aws s3 ls 

#List EC2 Instances
echo "Print list of available of EC2 Instance"
aws ec2 describe-instances | jq '.Reservations'[].Instances[].'InstanceId'

#List Lambda
echo "Print list of AWS Lambda Functions"
aws lambda list-functions

#List IAM Users
echo "Print list of IAM Users"
aws iam list-users | jq '.Users'[].'UserName' 
