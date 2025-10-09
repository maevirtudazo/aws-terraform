variable "aws_region" {
  description = "AWS region"
  default     = "ap-southeast-1"
}

variable "environment" {
  description = "Environment name"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
}

variable "subnet_cidr" {
  description = "Subnet CIDR block"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
}
