output "vpc_id" {
  value = module.network.this.vpc_id
}

output "security_groups_ids" {
  value = [module.network.aws_security_group.this.id]
}

output "subnet_id" {
  value = module.network.aws_subnet.this.id
}

output "instance_id" {
  value = module.compute.this.id
}

output "public_ip" {
  value = module.compute.aws_instance.this.public_ip
}

output "private_ip" {
  value = module.compute.aws_instance.this.private_ip
}

