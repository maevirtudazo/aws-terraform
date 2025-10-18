variable "instance_name" {
    description = "Name tag for the instance"
    type        = string
}

variable "instance_type" {
    description = "Type of EC2 instance (e.g., t2.micro)"
    default     = "t3.micro"
}

variable "ami_id" {
    description = "AMI ID for the instance"
    type        = string
}

variable "subnet_id" {
    description = "Subnet ID where instance will be launched"
    type        = string
}

variable "security_group_ids" {
    description = "List of security groups to attach"
    type        = list(string)
}