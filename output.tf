output "security_group_id" {
  value = aws_security_group.mvd-sg.id
}

output "public_subnet1_id" {
  value = aws_subnet.mvd-public-1.id
}

output "public_subnet2_id" {
  value = aws_subnet.mvd-public-2.id
}

output "private_subnet1_id" {
  value = aws_subnet.mvd-private-1.id
}

output "private_subnet2_id" {
  value = aws_subnet.mvd-private-2.id
}

