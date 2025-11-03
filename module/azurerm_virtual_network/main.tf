resource "azurerm_virtual_network" "vnet"{
    for_each = var.vnet
    name = each.value.name
    resource_group_name = each.value.resource_group_name
     address_space  = each.value.address_space
    location = each.value.location

    
  dynamic "subnet" {
    for_each =  var.subnets
    content {
        name             = subnet.value.name
    address_prefixes =  subnet.value.address_prefixes
  }
    }
  
}


variable "vnet"{
    type = map(object({

         resource_group_name = string
     address_space  = string
    location = string

    }))
}
variable "subnets" {
  type = map(list(object({
    name             = string
    address_prefixes = list(string)
  })))
}