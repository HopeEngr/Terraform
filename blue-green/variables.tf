#create a region variable
variable "aws_region" {
  default = "us-east-1"
}

#create a cidr block variable for the vpc
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}