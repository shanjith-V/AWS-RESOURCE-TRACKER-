#!/bin/bash



###########################################
# author : shanjith
# date :16th-jan
#
# version : v1
# purpose :track the resource of aws
##########################################

#s3
#ec2
#lambda
#iam

set -x

#listing s3 buckets
echo "s3 buckets"
aws s3 ls 


#listing ec2 instances
echo "ec2 instances"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#listing lambda function
echo "lambda functions"
aws lambda list-functions

#listing iam users
echo "iam users"
aws iam list-users

echo "$(date): Script is running" >> /home/ubuntu/aws-project/logfile.log 

