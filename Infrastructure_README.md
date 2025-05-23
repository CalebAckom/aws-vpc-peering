## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.95.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.95.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.finance_private_ec2](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/instance) | resource |
| [aws_instance.finance_public_ec2](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/instance) | resource |
| [aws_instance.marketing_private_ec2](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/instance) | resource |
| [aws_internet_gateway.finance_igw](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/internet_gateway) | resource |
| [aws_route.marketing_peering_route](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/route) | resource |
| [aws_route_table.finance_public_route_table](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/route_table) | resource |
| [aws_route_table_association.finance_public_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.marketing_private_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/route_table_association) | resource |
| [aws_security_group.finance_private_security_group](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/security_group) | resource |
| [aws_security_group.finance_public_security_group](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/security_group) | resource |
| [aws_security_group.marketing_private_security_group](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/security_group) | resource |
| [aws_subnet.finance_private_subnet](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/subnet) | resource |
| [aws_subnet.finance_public_subnet](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/subnet) | resource |
| [aws_subnet.marketing_private_subnet](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/subnet) | resource |
| [aws_vpc.finance_vpc](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/vpc) | resource |
| [aws_vpc.marketing_vpc](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/vpc) | resource |
| [aws_vpc_peering_connection.peering](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/resources/vpc_peering_connection) | resource |
| [aws_route_table.marketing_main_rt](https://registry.terraform.io/providers/hashicorp/aws/5.95.0/docs/data-sources/route_table) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI ID for the EC2 instances | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region in which infrastructure are deployed | `string` | n/a | yes |
| <a name="input_cidr_blocks"></a> [cidr\_blocks](#input\_cidr\_blocks) | List of CIDR blocks for VPC | `list(string)` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | n/a | `string` | n/a | yes |
| <a name="input_private_subnet_cidr_blocks"></a> [private\_subnet\_cidr\_blocks](#input\_private\_subnet\_cidr\_blocks) | List of CIDR blocks for private subnets | `list(string)` | n/a | yes |
| <a name="input_public_subnet_cidr_block"></a> [public\_subnet\_cidr\_block](#input\_public\_subnet\_cidr\_block) | List of CIDR blocks for public subnet | `string` | n/a | yes |
| <a name="input_vpc_names"></a> [vpc\_names](#input\_vpc\_names) | Names of VPCs | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_finance_vpc_id"></a> [finance\_vpc\_id](#output\_finance\_vpc\_id) | ID of the finance VPC |
| <a name="output_marketing_vpc_id"></a> [marketing\_vpc\_id](#output\_marketing\_vpc\_id) | ID of the marketing VPC |
| <a name="output_vpc_peering_connection_id"></a> [vpc\_peering\_connection\_id](#output\_vpc\_peering\_connection\_id) | ID of the VPC peering connection |
