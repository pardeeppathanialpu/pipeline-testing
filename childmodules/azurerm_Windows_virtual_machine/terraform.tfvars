vms = {
    vm1 = {
  name                = "pp-vm1"
  resource_group_name = "pp-rg1"
  location            = "eastus"
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  admin_password      = "DEVops@123"
  nname               = "pp-nic1"
  ipname              = "internal"
  subnetname          = "pp-froentendsub"
  virtual_network_name = "pp-vnet1"
  pipname             = "nic-pip"

    }
  vm2 = {
  name                = "pp-vm2"
  resource_group_name = "pp-rg1"
  location            = "eastus"
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  admin_password      = "DEVops@123"
  nname               = "pp-nic2"
  ipname              = "internal"
  subnetname          = "pp-backendsub"
  virtual_network_name = "pp-vnet1"
  pipname             = "nic-pip1"

    }
}