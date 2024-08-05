output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public.*.id
}

output "private_subnet_ids" {
  value = aws_subnet.private.*.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}

output "nat_gateway_ids" {
  value = aws_nat_gateway.main.*.id
}

output "private_instance_ids" {
  value = aws_instance.private.*.id
}

output "key_pair_parameter" {
  value = aws_ssm_parameter.key_pair.name
}

output "security_group_id" {
  value = aws_security_group.instance_sg.id
}
