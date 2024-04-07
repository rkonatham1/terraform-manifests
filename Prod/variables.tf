  variable "resource_group_name" {
    type = string
    description = "resources group"
  }
  
  variable "location" {
    type = string
    description = "location"
  }

  variable "storage_account_name" {
    type = string
    default = "This is the storage account"
  }
  
