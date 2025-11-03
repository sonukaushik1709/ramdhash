rgs = {
  rg1 = {
    name     = "sonu"
    location = "eastus"
  }
}

stgs = {
  sgs1 = {
    name                     = "ramshyam1234"
    resource_group_name      = "sonu"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      environment = "staging"
    }

  }
}

containers = {
  container1 = {
    name                  = "sonu-container"
    resource_group_name   = "sonu"
    storage_account_name  = "ramshyam1234"
    container_access_type = "private"

  }
  
}



  stg_data = {
  ramshyam1234 = {
    name                = "ramshyam1234"
    resource_group_name = "sonu"
  }
}

vnet = {
  vnet ={
    resource_group_name = "sonu"
     address_space  = ["10.0.0.0/16"]
    location = "eastus"

  }
}

subnets ={
  subnet1 = {
     name             = "frontend_subnet"
    address_prefixes = ["10.0.1.0/24"]

  }
   subnet2 = {
     name             = "backend_subnet"
    address_prefixes = ["10.0.2.0/24"]

  }


}