output "public_ip" {
  value = alicloud_instance.example.public_ip
}

output "primary_ip_address" {
  value = alicloud_instance.example.primary_ip_address
}