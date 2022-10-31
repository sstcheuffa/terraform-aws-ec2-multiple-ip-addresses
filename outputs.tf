
output "instance_public_ip" {
  description = "EC2 instance's public IP address"
  value       = aws_instance.serge_ec2_multiple_ips.public_ip
}