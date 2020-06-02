output "instance_public_dns" {
  value = aws_eip.web_instance_eip.public_dns
}
