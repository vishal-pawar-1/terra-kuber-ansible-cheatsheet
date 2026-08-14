output "ec2_instance_id" {
  value = aws_instance.ecommerce_instance.id
  
}
output "ec2_instance_public_ip" {
  value = aws_instance.ecommerce_instance.public_ip
}
output "ec2_instance_private_ip" {
  value = aws_instance.ecommerce_instance.private_ip
}
output "ec2_instance_dns_name" {
  value = aws_instance.ecommerce_instance.public_dns
}