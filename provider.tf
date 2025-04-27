terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.95.0"
    }
  }

  backend "s3" {
    bucket       = "vpc-terraform-state-s3"
    key          = "terraform.tfstate"
    region       = "eu-west-1"
    use_lockfile = true
  }
}
provider "aws" {
  region = var.aws_region
}
