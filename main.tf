resource "alicloud_instance" "example" {
  instance_name              = "demo-instance"
  instance_type              = var.instance_type
  image_id                   = var.image_id
  system_disk_category       = var.system_disk_category
  system_disk_size           = var.system_disk_size
  internet_charge_type       = var.internet_charge_type
  internet_max_bandwidth_out = var.internet_max_bandwidth_out

  vswitch_id = data.alicloud_vswitches.default.vswitches.0.id

  host_name = var.hostname
  key_name  = "seal-demo"

  security_groups = [
    data.alicloud_security_groups.default.groups.0.id
  ]
}

data "alicloud_vpcs" "default" {
  name_regex = "default"
}

data "alicloud_vswitches" "default" {
  vpc_id = data.alicloud_vpcs.default.vpcs.0.id
}

data "alicloud_security_groups" "default" {
  name_regex = "default"
}

resource "null_resource" "health_check" {
  depends_on = [
    alicloud_instance.example,
  ]
}
