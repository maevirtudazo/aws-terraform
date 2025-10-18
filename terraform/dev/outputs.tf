output "vpc_id" {
  value = module.network.vpc_id
}

output "security_groups_ids" {
  value = [module.network.aws_security_group.ids]
}

output "subnet_id" {
  value = module.network.aws_subnet.id
}

output "instance_id" {
  value = module.compute.id
}

output "public_ip" {
  value = module.compute.aws_instance.public_ip
}

output "private_ip" {
  value = module.compute.aws_instance.private_ip
}

