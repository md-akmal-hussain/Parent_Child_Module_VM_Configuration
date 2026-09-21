module "resource_group" {
  source          = "../../child_modules/azurerm_resource_group"
  resource_groups = var.rgs

}

module "virtual_network" {
  source = "../../child_modules/azurerm_virtual_network"
  vnets  = var.vnets

  depends_on = [module.resource_group]
}

module "subnet" {
  source  = "../../child_modules/azurerm_subnet"
  subnets = var.subnets

  depends_on = [module.virtual_network]
}

module "public_ip" {
  source = "../../child_modules/azurerm_public_ip"
  pips = var.pips

  depends_on = [ module.resource_group ]
  
}

module "linux_vm" {
  source = "../../child_modules/azurerm_linux_vitual_machine"
  vms    = var.vms

  depends_on = [module.subnet, module.public_ip]
}