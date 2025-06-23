module "resource_group" {
  source   = "./modules/resources_group"
  name     = var.rg_name
  location = var.location
  
}