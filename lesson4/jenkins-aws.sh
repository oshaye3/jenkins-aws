export AWS_PROFILE=default
export export AWS_ACCESS_KEY_ID=AKIAZS3EPIIDYTT7JMAA
export AWS_SECRET_ACCESS_KEY=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
export AWS_DEFAULT_REGION=eu-west-1
#!/usr/bin/env bash

#########################################

# Capturing System Information

###################################

# define variable for information
host_name=`hostname -f`
date_report=`date`
sleep 5s

echo ""
echo ""
echo "-----------------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "list resources from below AWS services existing on the centrale acct locally $host_name as at $date_report"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------------"
echo ""
echo ""
echo -e "VOLUMES:\t\t" 

aws ec2 describe-volumes \
    --filters Name=status,Values=available  --output table

echo ""

echo -e "VPCs:\t\t" 

aws ec2 describe-vpcs  --output table

echo ""
echo -e "ORGANIZATION:\t\t" 

aws organizations describe-organization  --output table
echo ""
echo -e "SUBNETS:\t\t" 

aws ec2 describe-subnets  --output table
echo ""
echo -e "IAM USERS:\t\t" 

aws iam list-users --profile default --output table
echo ""
echo -e "S3 BUCKETS:\t\t" 

aws s3 ls --profile default --output table
echo ""
echo -e "EC2:\t\t" 

aws ec2 describe-instances --output table
echo ""

echo -e "ROUTE 53 HOSTED ZONES:\t\t" 

aws route53 list-hosted-zones --output table
echo ""

