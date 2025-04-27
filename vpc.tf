resource "aws_vpc" "finance_vpc" {
  cidr_block = var.cidr_blocks[0]

  tags = {
    Name = var.vpc_names[0]
  }
}

resource "aws_vpc" "marketing_vpc" {
  cidr_block = var.cidr_blocks[1]

  tags = {
    Name = var.vpc_names[1]
  }
}