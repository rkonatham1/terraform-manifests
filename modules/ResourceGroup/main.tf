resource "azurerm_resource_group" "demo-rg" {
  name=var.resource_group_name
  location = var.location
}