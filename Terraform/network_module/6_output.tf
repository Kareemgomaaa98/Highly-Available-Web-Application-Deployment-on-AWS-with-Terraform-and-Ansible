output "public1_id" {
    value=aws_subnet.public1.id
}

output "public2_id" {
    value=aws_subnet.public2.id
}
output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}

