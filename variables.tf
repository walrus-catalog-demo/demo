# @label "实例规格"
# @group "基础"
variable "instance_type" {
  description = "The instance type of the ECS instance"
  default     = "ecs.s6-c1m2.small"
}

# @label "VM镜像id"
# @group "基础"
variable "image_id" {
  description = "The ID of the image used to launch the ECS instance"
  default     = "ubuntu_18_04_x64_20G_alibase_20230208.vhd"
}

# @label "系统磁盘类型"
# @group "基础"
# @options ["ephemeral_ssd"， "cloud_efficiency"， "cloud_ssd"， "cloud_essd"， "cloud"， "cloud_auto"]
variable "system_disk_category" {
  description = "The category of the system disk"
  default     = "cloud_efficiency"
}

# @label "系统盘大小"
# @group "基础"
variable "system_disk_size" {
  description = "The size of the system disk， value range: [20， 500]"
  default     = 40
}

# @label "主机名"
# @group "基础"
variable "hostname" {
  type        = string
  description = "The hostname of the ECS instance"
  default     = ""
}

# @label "网络计费类型"
# @group "高级"
# @options ["PayByTraffic"， "PayByBandwidth"]
variable "internet_charge_type" {
  description = "The billing method of the public network bandwidth"
  default     = "PayByTraffic"
}

# @label "最大出口带宽(MB)"
# @group "高级"
variable "internet_max_bandwidth_out" {
  description = "The maximum outbound bandwidth of the public network"
  default     = 5
}