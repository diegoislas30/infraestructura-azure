resource "azurerm_resourece_group" "resource_group01" {
  name     = "terraform_poc"
  location = "West Europe"

  tags = {
    environment = "Terraform"
    created_by  = "Terraform"
  }
  
}