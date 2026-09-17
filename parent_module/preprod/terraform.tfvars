rgs = {
  rg1 = {
    rg_name  = "rg-child-01"
    location = "central india"

  }

  rg2 = {
    rg_name  = "rg-child-02"
    location = "west us"

  }
}

vnet = {
  vnet1 = {

    vnet_name     = "vnet-child-01"
    rg_name       = "rg-child-01"
    location      = "central india"
    address_space = ["10.0.0.0/16"]
  }

}

subnets = {
  snet1 = {
    snet_name        = "snet-child-01"
    vnet_name        = "vnet-child-01"
    rg_name          = "rg-child-01"
    address_prefixes = ["10.0.1.0/24"]
  }

  snet2 = {
    snet_name        = "snet-child-02"
    vnet_name        = "vnet-child-01"
    rg_name          = "rg-child-01"
    address_prefixes = ["10.0.2.0/24"]
  }

  snet3 = {
    snet_name        = "AzureBastionSubnet"
    vnet_name        = "vnet-child-01"
    rg_name          = "rg-child-01"
    address_prefixes = ["10.0.3.0/24"]
  }

}

pips = {
  pip1 = {

    pip_name          = "pip-child-01"
    rg_name           = "rg-child-01"
    location          = "central india"
    allocation_method = "Static"
  }

}

nsgs = {
  nsg1 = {

    nsg_name          = "nsg-child-01"
    rg_name           = "rg-child-01"
    location          = "central india"
    allocation_method = "Static"

    sr_name                       = "NsgHttpSsh"
    sr_priority                   = 500
    sr_direction                  = "Inbound"
    sr_access                     = "Allow"
    sr_protocol                   = "Tcp"
    sr_source_port_range          = "*"
    sr_destination_port_ranges    = ["22", "80"]
    sr_source_address_prefix      = "*"
    sr_destination_address_prefix = "*"
  }
}

nics = {
  nic1 = {
    nic_name = "nic-child-01"
    location = "central india"
    rg_name  = "rg-child-01"

    ip_configuration = {
      ip_config_name                = "internal"
      private_ip_address_allocation = "Dynamic"


    }
  }


}





