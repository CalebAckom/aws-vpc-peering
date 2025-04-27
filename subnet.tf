resource "aws_subnet" "finance_public_subnet" {
  vpc_id                  = aws_vpc.finance_vpc.id
  cidr_block              = var.public_subnet_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_names[0]}-public-subnet"
  }
}

resource "aws_subnet" "finance_private_subnet" {
  vpc_id     = aws_vpc.finance_vpc.id
  cidr_block = var.private_subnet_cidr_blocks[0]

  tags = {
    Name = "${var.vpc_names[0]}-private-subnet"
  }
}

resource "aws_subnet" "marketing_private_subnet" {
  vpc_id     = aws_vpc.marketing_vpc.id
  cidr_block = var.private_subnet_cidr_blocks[1]

  tags = {
    Name = "${var.vpc_names[1]}-private-subnet"
  }
}
