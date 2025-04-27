resource "aws_security_group" "finance_public_security_group" {
  vpc_id              = aws_vpc.finance_vpc.id
  description         = "Public security group for ${var.vpc_names[0]} VPC"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SSH access from anywhere"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }

  tags = {
    Name = "${var.vpc_names[0]}-public-sg"
  }
}

resource "aws_security_group" "finance_private_security_group" {
  vpc_id              = aws_vpc.finance_vpc.id
  description         = "Private security group for ${var.vpc_names[0]} VPC"

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [var.cidr_blocks[0], var.cidr_blocks[1]]
    description = "Allow all traffic from both VPCs"
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }

  tags = {
    Name = "${var.vpc_names[0]}-private-sg"
  }
}

resource "aws_security_group" "marketing_private_security_group" {
  vpc_id              = aws_vpc.marketing_vpc.id
  description         = "Private security group for ${var.vpc_names[1]} VPC"

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [var.cidr_blocks[0], var.cidr_blocks[1]]
    description = "Allow all traffic from both VPCs"
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }

  tags = {
    Name = "${var.vpc_names[1]}-private-sg"
  }
}