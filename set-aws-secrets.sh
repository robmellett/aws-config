#!/bin/bash

AWS_ACCESS_KEY_ID=$(grep "^aws_access_key_id = " ~/.aws/credentials | awk -F"=" '{ print $2 }')
AWS_SECRET_ACCESS_KEY=$(grep "^aws_secret_access_key = " ~/.aws/credentials | awk -F"=" '{ print $2 }')

gh secret set AWS_ACCESS_KEY_ID --body "$AWS_ACCESS_KEY_ID"

gh secret set AWS_SECRET_ACCESS_KEY --body "$AWS_SECRET_ACCESS_KEY"

gh secret set AWS_REGION --body "ap-southeast-2"