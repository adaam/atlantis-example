terraform {
  backend "s3" {
    bucket         = "knowtions-terraform-state"
    key            = "hub/adamtest/terraform.state"
    region         = "us-east-2"
    encrypt        = true
    acl            = "bucket-owner-full-control"
    dynamodb_table = "state-lock"
  }

  required_version = "1.0.5"
  required_providers {
    aws        = "3.56.0"
  }
}

module "hub" {
  source = "./modules/infra"

  cidr = var.cidr
}
