module "resource_groups" {
  source = "./modules/resources_group"
  for_each = { for rg in var.resource_groups : rg.name => rg }

  name     = each.value.name
  location = each.value.location
}

module "vnets" {
  source = "./modules/vnets"
  for_each = { for vnet in var.vnets : vnet.name => vnet }

  vnet_name         = each.value.name
  address_space     = each.value.address_space
  location          = each.value.location
  resource_group_name = each.value.resource_group

  depends_on = [module.resource_groups]  # <- esta es la forma válida
}
