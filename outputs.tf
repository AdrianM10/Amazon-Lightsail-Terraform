output "instance_ip" {
  value = aws_lightsail_static_ip.static_ip.ip_address
}
