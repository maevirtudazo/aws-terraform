variable "aws_region" {
  description = "AWS region"
}

variable "environment" {
  description = "Environment name"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnet CIDR block"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
}

variable "instance_name" {
  description = "Default instance name"
}

variable "instance_type" {
  description = "Default instance type"
}

variable "ami_id" {
  description = "Default AMI ID"
}