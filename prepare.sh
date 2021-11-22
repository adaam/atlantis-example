#!/usr/bin/env bash

echo "Exporting secrets"
AWS_REGION=us-east-1 ./chamber-amd64 export test/terraform -f tfvars -o secrets.tfvars
