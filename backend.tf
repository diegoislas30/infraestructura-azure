terraform {
  backend "azurerm" {
    resource_group_name  = "terraform_poc"              # <- corregido
    storage_account_name = "terraformpoc131194"
    container_name       = "terraformpoc"
    key                  = "terraform.tfstate"
  }
}
