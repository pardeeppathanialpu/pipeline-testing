
module "resource_group" {
  source = "../../childmodules/azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../childmodules/azurerm_virtual_network"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../childmodules/azurerm_subnet"
  snets      = var.snets
}
module "pip" {
  depends_on = [module.resource_group]
  source     = "../../childmodules/azurerm_public_ip"
  pip        = var.pip
}
# module "virtual_machine" {
#   depends_on = [module.subnet, module.pip]
#   source     = "../../childmodules/azurerm_Windows_virtual_machine"
#   vms        = var.vms
# }