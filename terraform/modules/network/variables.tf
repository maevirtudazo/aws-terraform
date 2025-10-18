variable "environment" {
    description = "Environment name"
    type        = string
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
  type        = string
}