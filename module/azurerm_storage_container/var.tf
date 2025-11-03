variable "containers"{
    type = map(object({

         name = string
    storage_account_name  = string
    container_access_type = string

    


    }))
  
}

variable "stg_data" {
  type = map(object({
    name                = string
    resource_group_name = string
  }))
}
