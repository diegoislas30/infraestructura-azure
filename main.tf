# Trigger GitHub Actions run

resource "azurerm_resource_group" "rg-terraform" {
  name     = "terraform-poc"
  location = var.location
}


resource "azurerm_virtual_network" "vnet-terraform" {
  name                = "vnet-terraform"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg-terraform.location
  resource_group_name = azurerm_resource_group.rg-terraform.name
  tags = {
    environment = "Terraform"
  }
}

resource "azurerm_subnet" "subnet-terraform" {
  name                 = "subnet-terraform"
  resource_group_name  = azurerm_resource_group.rg-terraform.name
  virtual_network_name = azurerm_virtual_network.vnet-terraform.name
  address_prefixes     = ["10.0.1.0/24"]
  service_endpoints    = ["Microsoft.Storage"]
  

}

resource "azurerm_virtual_network" "vnet-terraform01" {
  name                = "vnet-terraform"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg-terraform.location
  resource_group_name = azurerm_resource_group.rg-terraform.name
  tags = {
    environment = "Terraform"
  }
}

resource "azurerm_subnet" "subnet-terraform01" {
  name                 = "subnet-terraform"
  resource_group_name  = azurerm_resource_group.rg-terraform.name
  virtual_network_name = azurerm_virtual_network.vnet-terraform01.name
  address_prefixes     = ["10.0.0.0/24"]
  service_endpoints    = ["Microsoft.Storage"]
}



