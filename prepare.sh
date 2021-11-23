#!/usr/bin/env bash

echo "Exporting secrets"
AWS_REGION=us-west-2 ./chamber-amd64 export test/terraform -f tfvars -o secrets.tfvars
exit 222
