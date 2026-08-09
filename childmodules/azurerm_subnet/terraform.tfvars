snets = {
  snet1 = {
    name                 = "pp-froentendsub"
    resource_group_name  = "pp-rg1"
    virtual_network_name = "pp-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  snet2 = {
    name                 = "pp-backendsub"
    resource_group_name  = "pp-rg1"
    virtual_network_name = "pp-vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}