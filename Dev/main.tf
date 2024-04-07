terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.90.0"
    }
  }
#Terraform State Storage to Azure Storage Container (Values will be taken from Azure DevOps)
backend "azurerm" {
#  resource_group_name = "terraform-storage-rg"
#  storage_account_name = "terraformstate2011"
#  container_name = "tfstatefiles"
#  key = "dev-terraform.tfstate"
}  
}

provider "azurerm" {
  features {}
}
 
module "resource_group" {
  source              = "./../modules/ResourceGroup/"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "Storageaccount" {
  source                   = "./../modules/Storage-Account"
  storage_account_name     = var.storage_account_name
  resource_group_name      = module.resource_group.resource-group-out
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}