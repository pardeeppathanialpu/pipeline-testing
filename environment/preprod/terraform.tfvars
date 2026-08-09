rgs = {
  rg1 = {
    name     = "pp-rg1"
    location = "eastus"
  }
  rg2 = {
    name     = "pp-rg2"
    location = "eastus"
  }
}
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

# vms = {
#   vm1 = {
#     name                 = "pp-vm1"
#     resource_group_name  = "pp-rg1"
#     location             = "eastus"
#     size                 = "Standard_DC1ds_v3"
#     admin_username       = "adminuser"
#     admin_password       = "DEVops@123"
#     nname                = "pp-nic1"
#     ipname               = "internal"
#     subnetname           = "pp-froentendsub"
#     virtual_network_name = "pp-vnet1"
#     pipname              = "nic-pip"

#   }
#   vm2 = {
#     name                 = "pp-vm2"
#     resource_group_name  = "pp-rg1"
#     location             = "eastus"
#     size                 = "Standard_DC1ds_v3"
#     admin_username       = "adminuser"
#     admin_password       = "DEVops@123"
#     nname                = "pp-nic2"
#     ipname               = "internal"
#     subnetname           = "pp-backendsub"
#     virtual_network_name = "pp-vnet1"
#     pipname              = "nic-pip1"

#   }
# }
pip = {
  pip1 = {
    name                = "nic-pip"
    resource_group_name = "pp-rg1"
    location            = "eastus"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "nic-pip1"
    resource_group_name = "pp-rg1"
    location            = "eastus"
    allocation_method   = "Static"
  }
}