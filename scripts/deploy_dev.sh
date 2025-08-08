#!/bin/bash
set -e
cd infra/terraform
terraform init
terraform apply -auto-approve
