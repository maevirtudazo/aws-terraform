variable "aws_region" {
  description = "AWS region"
  default     = "ap-southeast-1"
}

variable "environment" {
  description = "Environment name"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Subnet CIDR block"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  default     = "ap-southeast-1a"
}

variable "instance_name" {
  description = "Default instance name"
  default     = "mae-http-instance"
}

variable "instance_type" {
  description = "Default instance type"
  default     = "t3.micro"
}

variable "ami_id" {
  description = "Default AMI ID"
  default     = "ami-00415ad0da23eebc1"
}