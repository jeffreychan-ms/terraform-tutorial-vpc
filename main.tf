###
# Providers
##
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.41.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}


###
# Variables
##


###
# Resources
##
module "vpc" {
  source = "./modules/vpc"

  infra_env = var.infra_env
  vpc_cidr  = "10.0.0.0/17"
}
