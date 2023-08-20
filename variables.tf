# @label "Instance type"
# @group "Basic"
variable "instance_type" {
  description = "The instance type of the ECS instance"
  default     = "ecs.s6-c1m2.small"
}

# @label "VM image id"
# @group "Basic"
variable "image_id" {
  description = "The ID of the image used to launch the ECS instance"
  default     = "ubuntu_18_04_x64_20G_alibase_20230208.vhd"
}

# @label "System disk type"
# @group "Basic"
# @options ["ephemeral_ssd", "cloud_efficiency", "cloud_ssd", "cloud_essd", "cloud", "cloud_auto"]
variable "system_disk_category" {
  description = "The category of the system disk"
  default     = "cloud_efficiency"
}

# @label "System disk size"
# @group "Basic"
variable "system_disk_size" {
  description = "The size of the system disk, value range: [20, 500]"
  default     = 40
}

# @label "Hostname"
# @group "Basic"
variable "hostname" {
  type        = string
  description = "The hostname of the ECS instance"
  default     = ""
}

# @label "Network billing type"
# @group "Advanced"
# @options ["PayByTraffic", "PayByBandwidth"]
variable "internet_charge_type" {
  description = "The billing method of the public network bandwidth"
  default     = "PayByTraffic"
}

# @label "Max outbound bandwidth (MB)"
# @group "Advanced"
variable "internet_max_bandwidth_out" {
  description = "The maximum outbound bandwidth of the public network"
  default     = 5
}
