output "f5-ami" {
  value = "Some other text with the AMI ID: ${data.aws_ami_ids.bigip.ids[0]}"
}
output "f5_username" {
  value = "admin"
}
output "f5_password" {
  value = random_string.password.result
}
output "f5_ui" {
  value = "https://${aws_eip.mgmt.public_ip}"
}
output "f5_ssh" {
  value = "ssh admin@${aws_eip.mgmt.public_ip} -i ssh-key.pem"
}
output "f5_vs1" {
  value = [aws_eip.public-vs.private_ip, aws_eip.public-vs.public_ip]
}
output "f5_vs1_uri" {
  value = "http://${aws_eip.public-vs.public_ip}"
}
output "f5_external_self" {
  value = aws_network_interface.BIG-IP_1-1_public.private_ip
}
output "f5_internal_self" {
  value = aws_network_interface.BIG-IP_1-2_Private.private_ip
}
output "consul_uri" {
  value = "http://${aws_instance.consul.public_ip}:8500"
}
