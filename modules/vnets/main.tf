resource "azurerm_virtual_network" "vnet" {
    name                = "vnet-pruebas"
    address_space       = ["10.0.0.0/16"]
    location            = azurerm_resource_group.rg2.location
    resource_group_name = azurerm_resource_group.rg2.name
    tags = {
        environment = "production"
        owner       = "team-a"
    }
}