rgs = {
  rg1 = {

    rg_name  = "jp_rg-01"
    location = "Central India"

  }
}

vnets = {
  vnet1 = {
    vnet_name = "jp_vnet-01"
    location  = "Central India"
    rg_name   = "jp_rg-01"
    a_p       = ["10.0.0.0/16"]
  }

  vnet2 = {
    vnet_name = "jp_vnet-02"
    location  = "Central India"
    rg_name   = "jp_rg-01"
    a_p       = ["20.150.0.0/16"]
  }
}

snets = {
  snet1 = {
    snet_name        = "jp_snet-01"
    rg_name          = "jp_rg-01"
    vnet_name        = "jp_vnet-01"
    address_prefixes = ["10.0.1.0/24"]
  }

  snet2 = {
    snet_name        = "jp_snet-02"
    rg_name          = "jp_rg-01"
    vnet_name        = "jp_vnet-01"
    address_prefixes = ["10.0.2.0/24"]
  }

  snet3 = {
    snet_name        = "jp_snet-03"
    rg_name          = "jp_rg-01"
    vnet_name        = "jp_vnet-01"
    address_prefixes = ["10.0.3.0/24"]
  }

  snet4 = {
    snet_name        = "AzureBastionSubnet"
    rg_name          = "jp_rg-01"
    vnet_name        = "jp_vnet-01"
    address_prefixes = ["10.0.4.0/24"]
  }
}


pips = {
  pip1 = {
    pip_name          = "jp_pip-01"
    rg_name           = "jp_rg-01"
    location          = "Central India"
    allocation_method = "Static"
  }
  pip2 = {
    pip_name          = "Bastion-01"
    rg_name           = "jp_rg-01"
    location          = "Central India"
    allocation_method = "Static"
  }
}

vms = {
  frontend_vm = {
    vm_name                         = "frontend-vm-01"
    rg_name                         = "jp_rg-01"
    location                        = "Central India"
    vm_size                         = "Standard_B2s_v2"
    admin_username                  = "adminuser"
    admin_password                  = "Devops@12345"
    disable_password_authentication = false

    od_caching              = "ReadWrite"
    od_storage_account_type = "Standard_LRS"

    sir_publisher = "Canonical"
    sir_offer     = "0001-com-ubuntu-server-jammy"
    sir_sku       = "22_04-lts"
    sir_version   = "latest"


    nic_name                      = "jp_nic-01"
    ip_config_name                = "internal"
    private_ip_address_allocation = "Dynamic"

    snet_name = "jp_snet-01"
    vnet_name = "jp_vnet-01"
    pip_name  = "jp_pip-01"
    nsg_name  = "jp_nsg-01"

    sr_name                    = "SSHAndHTTP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["22", "80"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"



  }

  backend_vm = {
    vm_name                         = "frontend-vm-01"
    rg_name                         = "jp_rg-01"
    location                        = "Central India"
    vm_size                         = "Standard_B2s_v2"
    admin_username                  = "adminuser"
    admin_password                  = "Devops@12345"
    disable_password_authentication = false

    od_caching              = "ReadWrite"
    od_storage_account_type = "Standard_LRS"

    sir_publisher = "Canonical"
    sir_offer     = "0001-com-ubuntu-server-jammy"
    sir_sku       = "22_04-lts"
    sir_version   = "latest"


    nic_name                      = "jp_nic-02"
    ip_config_name                = "internal"
    private_ip_address_allocation = "Dynamic"

    snet_name = "jp_snet-02"
    vnet_name = "jp_vnet-01"
   
    nsg_name  = "jp_nsg-01"

    sr_name                    = "SSHAndHTTP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["22", "80"]
    source_address_prefix      = "*"
    destination_address_prefix = "*"



  }
}



