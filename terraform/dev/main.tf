terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.6.0"
}

provider "aws" {
  region = var.aws_region
}

module "network" {
  source            = "./modules/network"
  environment       = var.environment
  vpc_cidr          = var.vpc_cidr
  availability_zone = var.availability_zone

}