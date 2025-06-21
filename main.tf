resource "azurerm_resource_group" "rg-terraform" {
  name     = "terraform-poc"
  location = var.location
}
