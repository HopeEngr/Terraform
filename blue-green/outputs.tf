#output the availability zones
output "availability_zones" {
  value = data.aws_availability_zones.available.names
}

#output windows ami
output "windows_ami" {
  value = data.aws_ami.windows.id
}