output "marketing_vpc_id" {
  description = "ID of the marketing VPC"
  value       = aws_vpc.marketing_vpc.id
}

output "finance_vpc_id" {
  description = "ID of the finance VPC"
  value       = aws_vpc.finance_vpc.id
}

output "vpc_peering_connection_id" {
  description = "ID of the VPC peering connection"
  value       = aws_vpc_peering_connection.peering.id
}
