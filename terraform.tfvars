resource_groups = [
  { name = "rg-pruebas", location = "eastus" },
  { name = "rg-apps", location = "eastus" }
]

vnets = [
  {
    name           = "vnet-pruebas"
    address_space  = ["10.0.0.0/16"]
    location       = "eastus"
    resource_group = "rg-pruebas"
  },
  {
    name           = "vnet-apps"
    address_space  = ["10.1.0.0/16"]
    location       = "eastus"
    resource_group = "rg-apps"
  }
]
