module "resource_group" {
  source   = "./modules/resources_group"
}


module "vnet" {
  source   = "./modules/vnets"
}

