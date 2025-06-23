resource "azurerm_resource_group" "rg" {
  name     = "rg-pruebas"
  location = "eastus"
}


resource "azurerm_resource_group" "rg2" {
  name     = "rg-ptmmigracion"
  location = "easus"

    tags = {
        environment = "production"
        owner       = "team-a"
    }
}


