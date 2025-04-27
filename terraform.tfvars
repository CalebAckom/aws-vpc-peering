aws_region                 = "eu-west-1"
vpc_names                  = ["Finance-VPC", "Marketing-VPC"]
cidr_blocks                = ["10.10.0.0/16", "10.100.0.0/16"]
private_subnet_cidr_blocks = ["10.10.1.0/24", "10.100.0.0/24"]
public_subnet_cidr_block   = "10.10.0.0/24"
key_name                   = "ci_cd"
instance_type              = "t2.micro"
ami                        = "ami-0e9085e60087ce171"
