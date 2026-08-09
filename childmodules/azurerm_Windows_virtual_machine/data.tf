data "azurerm_subnet" "subnet" {
  for_each = var.vms
  name                 = each.value.subnetname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_public_ip" "example-pip" {
  for_each = var.vms
  name                = each.value.pipname  
  resource_group_name = each.value.resource_group_name
}
