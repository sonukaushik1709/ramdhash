module "rg" {
  source = "../../module/azurerm_resource_group"
  rgs    = var.rgs

}
module "rg1600" {
  source = "../../module/azurerm_resource_group"
  rgs    = var.rgs

}
module "stgs" {
  source     = "../../module/azurerm_storage_account"
  depends_on = [module.rg]
  stgs       = var.stgs
}

module "container" {
    depends_on = [module.stgs]
  source = "../../module/azurerm_storage_container"
  containers = var.containers
  stg_data   = var.stg_data
}

module "vnet"{
  source = "../../module/azurerm_virtual_network"
  depends_on = [module.rg]
  vnet = var.vnet
  subnets = var.subnets
}