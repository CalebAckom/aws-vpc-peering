data "aws_route_table" "marketing_main_rt" {
  vpc_id = aws_vpc.marketing_vpc.id

  filter {
    name = "association.main"
    values = ["true"]
  }
}

resource "aws_route_table" "finance_public_route_table" {
  vpc_id = aws_vpc.finance_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.finance_igw.id
  }

  tags = {
    Name = "${var.vpc_names[0]}-public-route-table"
  }
}

resource "aws_route_table_association" "finance_public_route_table_association" {
  route_table_id = aws_route_table.finance_public_route_table.id
  subnet_id      = aws_subnet.finance_public_subnet.id
}

resource "aws_route" "marketing_peering_route" {
  route_table_id            = data.aws_route_table.marketing_main_rt.id
  destination_cidr_block    = aws_vpc.finance_vpc.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id
}

resource "aws_route_table_association" "marketing_private_route_table_association" {
  route_table_id = data.aws_route_table.marketing_main_rt.id
  subnet_id      = aws_subnet.marketing_private_subnet.id
}

# resource "aws_route_table" "marketing_private_route_table" {
#   vpc_id = aws_vpc.marketing_vpc.id
#
#   route {
#     cidr_block = aws_vpc.finance_vpc.cidr_block
#     vpc_peering_connection_id = aws_vpc_peering_connection.peering.id
#   }
#
#   tags = {
#     Name = "${var.vpc_names[1]}-private-route-table"
#   }
# }
#
# resource "aws_route_table_association" "marketing_private_route_table_association" {
#   route_table_id = aws_route_table.marketing_private_route_table.id
#   subnet_id      = aws_subnet.marketing_private_subnet.id
# }