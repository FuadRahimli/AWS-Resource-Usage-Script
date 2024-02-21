#!/bin/bash

# Author: Fuad Rahimli
# Date: 18th February 2024


# This script will report the AWS resource usage.

set -x #It will show our script in debug mode and tell us which command is executed and what the output will be

# The order is as follows:

# AWS S3 Buckets
# AWS EC2 Instances
# AWS Lambda Functions
# AWS IAM Users


# list AWS S3 Buckets
echo "Print list of AWS S3 buckets."
aws s3 ls


# list AWS EC2 Instances
echo "Print list of AWS EC2 inctances."
aws ec2 describe-instances
# aws ec2 describe-instances | jq ".Reservations[].Instances[].PrivateIpAddress" --> To print PrivateIpAddress
# aws ec2 describe-instances | jq ".Reservations[].Instances[].Architecture" --> To print Architecture
# aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId" --> To print InstanceId


# list AWS Lambda Functions
echo "Print list of AWS Lambda functions."
aws lambda list-functions
# aws lambda list-functions | jq ".Functions[].FunctionName" --> To print FunctionName
#aws lambda list-functions | jq ".Functions[].MemorySize" --> To print MemorySize


# list AWS IAM Users
echo "Print list of AWS IAM Users."
aws iam list-users
# aws iam list-users | jq ".Users" --> To list Users


### By using jq command, it is possible to print special data from the AWS resources. To see the examples, check above.

