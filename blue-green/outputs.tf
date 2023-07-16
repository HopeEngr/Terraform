#output the availability zones
output "availability_zones" {
  value = data.aws_availability_zones.available.names
}

#output windows ami
output "windows_ami" {
  value = data.aws_ami.windows.id
}

#output linux ami
output "linux_ami" {
  value = data.aws_ami.amazon_linux.id
}

#output vpc id
output "vpc_id" {
  value = module.vpc.vpc_id
}

#output subnet ids
output "public_subnet_ids" {
  value = module.vpc.public_subnets
}

output "private_subnet_ids" {
  value = module.vpc.private_subnets
}

#output security group ids
output "app_security_group_id" {
  value = module.app_security_group.security_group_id
}

output "lb_security_group_id" {
  value = module.lb_security_group.security_group_id
}

#output security group names
output "app_security_group_name" {
  value = module.app_security_group.security_group_name
}

output "lb_security_group_name" {
  value = module.lb_security_group.security_group_name
}

output "lb_dns_name" {
  value = aws_lb.app.dns_name
}
