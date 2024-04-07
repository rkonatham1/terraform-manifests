variable "storage_account_name" {
  type = string
  description = "This is the storage account"
}
variable "resource_group_name" {
  type = string
  description = "This is the resource group"
}

variable "location" {
    type=string
    description = "THis is the location" 
}
variable "account_tier" {
    type = string
    description = "This is the account tier"
}
variable "account_replication_type" {
    type = string
    description = "This is the account_replication_type"
}
