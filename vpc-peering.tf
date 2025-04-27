resource "aws_vpc_peering_connection" "peering" {
  peer_vpc_id = aws_vpc.finance_vpc.id
  vpc_id      = aws_vpc.marketing_vpc.id
  auto_accept = true

  tags = {
    Name = "${var.vpc_names[0]}-${var.vpc_names[1]}-peering"
  }
}
