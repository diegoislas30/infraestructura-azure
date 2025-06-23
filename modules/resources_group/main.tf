resource "azurerm_resource_group" "this" {
  name    = var.name
  location = var.location

  tags = {
    environment = "poc"
    created_by  = "terraform"
  }
}

