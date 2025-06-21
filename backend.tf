terraform {
  backend "azurerm" {
    resource_group_name   = "terraform_poc"
    storage_account_name  = "terraformopc131194"
    container_name        = "terraformpoc" # ← el nombre exacto en Azure
    key                   = "infraestructura.tfstate"
  }
}
