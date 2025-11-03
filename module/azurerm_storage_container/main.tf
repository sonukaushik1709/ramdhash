resource "azurerm_storage_container" "container"{
    for_each = var.containers
    name = each.value.name
    storage_account_id = data.azurerm_storage_account.stg_data[each.value.storage_account_name].id
    container_access_type = each.value.container_access_type
    
}

