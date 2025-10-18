output "vpc_id" {
  value = module.network.vpc_id
}

output "security_groups_ids" {
  value = module.network.security_group.ids
}

output "subnet_id" {
  value = module.network.subnet.id
}

output "instance_id" {
  value = module.compute.id
}

output "public_ip" {
  value = module.compute.public_ip
}

output "private_ip" {
  value = module.compute.private_ip
}

