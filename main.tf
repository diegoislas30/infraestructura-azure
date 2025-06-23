resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
}


module "vnet01" {
  source              = "./modules/vnets"
  vnet_name           = "vnet-rg2"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = "rg-ptmmigracion" # ya existe
}
