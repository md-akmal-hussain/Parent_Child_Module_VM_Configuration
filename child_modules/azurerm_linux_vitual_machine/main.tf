resource "azurerm_network_interface" "nic" {
  for_each = var.nics

  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = each.value.ip_configuration.ip_config_name
    subnet_id                     = "/subscriptions/1bc2d8f2-0b13-4cf8-83a7-a0a3bea6ae63/resourceGroups/rg-child-01/providers/Microsoft.Network/virtualNetworks/vnet-child-01/subnets/snet-child-02"
    private_ip_address_allocation = each.value.ip_configuration.private_ip_address_allocation
  }
}