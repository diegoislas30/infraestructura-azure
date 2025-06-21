terraform {
  backend "azurerm" {
    resource_group_name   = "terraform_poc"
    storage_account_name  = "terraformpoc131194"  # <- nombre correcto
    container_name        = "terraformpoc"
    key                   = "infraestructura.tfstate"
  }
}


###