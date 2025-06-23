resource "azurerm_resource_group" "rg" {
  name     = "rg-pruebas"
  location = "eastus"
}


resource "azurerm_resource_group" "rg2" {
  name     = "rg-ptmmigracion"
  location = "eastus"

    tags = {
        environment = "production"
        owner       = "team-a"
    }
}


resource "azurerm_resource_group" "pruebasterraform" {
  name     = "terraform-poc"
  location = "eastus"

  tags = {
    environment = "production"
    owner       = "team-a"
  }
}




