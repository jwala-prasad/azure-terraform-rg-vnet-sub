module "rg" {
  source = "../child_module/azurerm_rg"
  rgs    = var.rgs
}
module "vnts" {
  source = "../child_module/azurerm_vnet"
  vnts   = var.vnts
}
module "snts" {
  source = "../child_module/azurerm_sub"
  snts   = var.snts
}