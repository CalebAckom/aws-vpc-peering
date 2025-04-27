resource "aws_instance" "finance_public_ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.finance_public_subnet.id
  vpc_security_group_ids = [aws_security_group.finance_public_security_group.id]
  key_name = var.key_name

  tags = {
    Name = "${var.vpc_names[0]}-public-ec2-instance"
  }
}

resource "aws_instance" "finance_private_ec2" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.finance_private_subnet.id
  vpc_security_group_ids = [aws_security_group.finance_private_security_group.id]

  tags = {
    Name = "${var.vpc_names[0]}-private-ec2-instance"
  }
}

resource "aws_instance" "marketing_private_ec2" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id     = aws_subnet.marketing_private_subnet.id
    vpc_security_group_ids = [aws_security_group.marketing_private_security_group.id]

    tags = {
        Name = "${var.vpc_names[1]}-private-ec2-instance"
    }
}