#!/usr/bin/env bash

echo "Exporting secrets"
AWS_REGION=us-west-2 ./chamber-amd64 export test/terraform -f tfvars -o secrets.tfvars

if [ $? -ne 0 ]; then 
  echo 'error when export secrets'
  exit 1
fi
