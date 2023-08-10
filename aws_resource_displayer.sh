# Provides Data about the Various AWS Instances 
# Used Ubuntu for the Linux Distribution 
# S3
# EC2
# Lex 
# Lambda
# IAM

#list s3 buckets
echo 'Print s3 Instances'
aws s3 ls

#list ec2 instance
echo 'Print ec2 Instances'
aws ec2 describe-instances

#list lex bots
echo 'Print LexV2 Bots'
aws lexv2-models list-bots


#Prints just the LexBot Name and Summary 
aws lexv2-models list-bots | jq -r '.botSummaries[].botName'

#list lambda functions
echo 'Print Lambda Functions'
aws lambda list-functions

#Prints just the Name for the Lambda Function 
aws lambda list-functions | jq -r '.Functions[].FunctionName'

#list iam
echo 'Print IAM Users'
aws iam list-users


#Prints just the UserName
aws iam list-users | jq -r '.Users[].UserName'
