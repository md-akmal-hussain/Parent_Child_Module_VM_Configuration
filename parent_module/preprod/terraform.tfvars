rgs = {
  rg1 = {
    rg_name  = "rg-preprod-01"
    location = "central india"

  }
}

vnets = {
  vnet1 = {

    vnet_name     = "vnet-preprod-01"
    rg_name       = "rg-preprod-01"
    location      = "central india"
    address_space = ["10.0.0.0/16"]
  }

}

subnets = {
  snet1 = {
    snet_name        = "frontend-snet-01"
    vnet_name        = "vnet-preprod-01"
    rg_name          = "rg-preprod-01"
    address_prefixes = ["10.0.1.0/24"]
  }

  snet2 = {
    snet_name        = "backend-snet-01"
    vnet_name        = "vnet-preprod-01"
    rg_name          = "rg-preprod-01"
    address_prefixes = ["10.0.2.0/24"]
  }

  snet3 = {
    snet_name        = "database-snet-01"
    vnet_name        = "vnet-preprod-01"
    rg_name          = "rg-preprod-01"
    address_prefixes = ["10.0.3.0/24"]
  }

}

pips = {
  pip1 = {
    pip_name          = "frontend-pip-01"
    rg_name           = "rg-preprod-01"
    location          = "central india"
    allocation_method = "Static"
  }

  pip2 = {
    pip_name          = "backend-pip-01"
    rg_name           = "rg-preprod-01"
    location          = "central india"
    allocation_method = "Static"
  }

  pip3 = {
    pip_name          = "database-pip-01"
    rg_name           = "rg-preprod-01"
    location          = "central india"
    allocation_method = "Static"
  }

}

vms = {
  vm1 = {
    vm_name        = "frontend-vm-01"
    rg_name        = "rg-preprod-01"
    location       = "central india"
    vm_size        = "Standard_D2as_v6"
    admin_username = "adminuser"
    admin_password = "Admin@123"
    dpa            = false

    snet_name = "frontend-snet-01"
    vnet_name = "vnet-preprod-01"
    pip_name  = "frontend-pip-01"
    nic_name  = "frontend-nic-01"

    ip_config_name       = "frontend-ipconfig-01"
    private_ip_allocation = "Dynamic"

    os_caching              = "ReadWrite"
    os_storage_account_type = "Standard_LRS"

    sir_publisher = "Canonical"
    sir_offer     = "0001-com-ubuntu-server-jammy"
    sir_sku       = "22_04-lts"
    sir_version   = "latest"
  }

   vm2 = {
    vm_name        = "backend-vm-01"
    rg_name        = "rg-preprod-01"
    location       = "central india"
    vm_size        = "Standard_D2as_v6"
    admin_username = "adminuser"
    admin_password = "Admin@123"
    dpa            = false

    snet_name = "backend-snet-01"
    vnet_name = "vnet-preprod-01"
    pip_name  = "backend-pip-01"
    nic_name  = "backend-nic-01"

    ip_config_name       = "backend-ipconfig-01"
    private_ip_allocation = "Dynamic"

    os_caching              = "ReadWrite"
    os_storage_account_type = "Standard_LRS"

    sir_publisher = "Canonical"
    sir_offer     = "0001-com-ubuntu-server-jammy"
    sir_sku       = "22_04-lts"
    sir_version   = "latest"
  }

   vm3 = {
    vm_name        = "database-vm-01"
    rg_name        = "rg-preprod-01"
    location       = "central india"
    vm_size        = "Standard_D2as_v6"
    admin_username = "adminuser"
    admin_password = "Admin@123"
    dpa            = false

    snet_name = "database-snet-01"
    vnet_name = "vnet-preprod-01"
    pip_name  = "database-pip-01"
    nic_name  = "database-nic-01"

    ip_config_name       = "database-ipconfig-01"
    private_ip_allocation = "Dynamic"

    os_caching              = "ReadWrite"
    os_storage_account_type = "Standard_LRS"

    sir_publisher = "Canonical"
    sir_offer     = "0001-com-ubuntu-server-jammy"
    sir_sku       = "22_04-lts"
    sir_version   = "latest"
  }
}





