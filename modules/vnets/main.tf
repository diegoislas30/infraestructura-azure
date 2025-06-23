module "resource_group" {
  source = "./modules/resources_group"
}

module "vnet01" {
  source              = "./modules/vnets"
  vnet_name           = "vnet-rg2"
  address_space       = ["10.1.0.0/16"]
  resource_group_name = "rg-ptmmigracion"
  location            = "eastus"

  depends_on = [module.resource_group]  # ✅ Aquí es donde se debe poner
}
