module "resource_group" {
  source = "../../Child_Module/azurerm_resource_group"
  rgs    = var.rgs

}

module "virtual_network" {
  source     = "../../Child_Module/azurerm_virtual_network"
  vnets      = var.vnets

  depends_on = [module.resource_group]

}

module "subnet" {
  source = "../../Child_Module/azurerm_subnet"
  snets  = var.snets

  depends_on = [module.virtual_network]

}

module "public_ip" {
  source     = "../../Child_Module/azurerm_public_ip"
  public_ips = var.pips

  depends_on = [module.resource_group]

}


module "linux_vm" {
  source = "../../Child_Module/azurerm_linux_virtual_machine"
  vms    = var.vms

  depends_on = [module.subnet, module.public_ip]

}

