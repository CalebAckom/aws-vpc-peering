resource "aws_internet_gateway" "finance_igw" {
  vpc_id = aws_vpc.finance_vpc.id

  tags = {
    Name = "${var.vpc_names[0]}-igw"
  }
}