vnets = {
  vnet1 = {
    name                = "pp-vnet1"
    location            = "eastus"
    resource_group_name = "pp-rg1"
    address_space       = ["10.0.0.0/16"]
  }
  vnet2 = {
    name                = "pp-vnet2"
    location            = "eastus"
    resource_group_name = "pp-rg2"
    address_space       = ["10.1.0.0/16"]
  }
}