module "rg" {
  source = "../child_module/azurerm_rg"
  rgs    = var.rgs
}
module "vnts" {
  source = "../child_module/azurerm_vnet"
  depends_on = [ module.rg ]
  vnts   = var.vnts
}
module "snts" {
  source = "../child_module/azurerm_sub"
  depends_on = [ module.rg,module.vnts ]
  snts   = var.snts
}