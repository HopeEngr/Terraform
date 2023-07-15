module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${random_pet.random_name.id}-vpc"
  cidr = var.vpc_cidr_block

  # azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  azs             = data.aws_availability_zones.available.names
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
