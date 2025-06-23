resource "azurerm_resource_group" "resource_group" {
  name     = var.location.eastus
  location = var.location.eastus

  tags = {
    environment = "Terraform"
    created_by  = "Terraform"
  }
}

