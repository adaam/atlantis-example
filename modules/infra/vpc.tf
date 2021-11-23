variable "cidr" {
  type        = string
  description = "CIDR Block for VPC"
}

module "vpc" {
  source           = "terraform-aws-modules/vpc/aws"
  version          = "3.6.0"
  name             = "testVPC"
  cidr             = var.cidr
  azs              = ["us-west-2a","us-west-2b"]
  private_subnets  = [ "10.199.10.0/24", "10.199.11.0/24" ]
  public_subnets   = [ "10.199.20.0/24", "10.199.21.0/24" ]

  enable_nat_gateway = false

  create_database_subnet_group = false
  single_nat_gateway           = true
  one_nat_gateway_per_az       = false
  enable_dns_hostnames         = true
}
