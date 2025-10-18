terraform {
  backend "s3" {
    bucket = "mae-aws-terraform"
    key    = "dev/terraform.tfstate"
    region = "ap-southeast-1"
    encrypt = true
  }
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
  source            = "../modules/network"
  environment       = var.environment
  vpc_cidr          = var.vpc_cidr
  availability_zone = var.availability_zone
  subnet_cidr       = var.subnet_cidr

}

module "compute" {
  source              = "../modules/compute"
  instance_name       = "mae-http-instance"
  instance_type       = "t3.micro"
  ami_id              = "ami-00415ad0da23eebc1"
  subnet_id           = module.network.subnet_id
  security_group_ids  = module.network.security_group_ids
}