variable "resource_group_name" {
  description = "Development Resource Group Name"

  type = string
}

variable "location" {
  description = "Azure Region"

  type = string
}

variable "tags" {
  description = "Common tags"

  type = map(string)

  default = {}
}