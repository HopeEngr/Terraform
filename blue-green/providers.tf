# create a aws provider
provider "aws" {
  region = var.aws_region
}

# create provider random
provider "random" {
  version = ">=2.2.1"
}