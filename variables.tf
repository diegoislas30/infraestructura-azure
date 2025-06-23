variable "resource_groups" {
  type = list(object({
    name     = string
    location = string
  }))
}

variable "vnets" {
  type = list(object({
    name           = string
    address_space  = list(string)
    location       = string
    resource_group = string
  }))
}
