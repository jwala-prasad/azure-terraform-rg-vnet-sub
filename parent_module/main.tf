module "rg" {
  source = "../child_module/azurerm_rg"
  rgs    = var.rgs
}
