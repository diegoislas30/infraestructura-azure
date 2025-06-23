resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-pruebas"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.rg.name.rg2
  location           = azurerm_resource_group.rg2.location

    tags = {
        environment = "production"
        owner       = "team-a"
    }

}
