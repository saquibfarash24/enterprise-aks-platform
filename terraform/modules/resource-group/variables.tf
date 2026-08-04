variable "resource_group_name" {
  description = "Name of the Azure Resource Group"

  type = string
}

variable "location" {
  description = "Azure region for the Resource Group"

  type = string
}

variable "tags" {
  description = "Tags to associate with the Resource Group"

  type = map(string)

  default = {}
}