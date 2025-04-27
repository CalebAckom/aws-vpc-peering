variable "aws_region" {
  type        = string
  description = "Region in which infrastructure are deployed"
}

variable "vpc_names" {
  type        = list(string)
  description = "Names of VPCs"
}

variable "cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks for VPC"
}

variable "private_subnet_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks for private subnets"
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "List of CIDR blocks for public subnet"
}

variable "key_name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami" {
  type        = string
  description = "AMI ID for the EC2 instances"
}
