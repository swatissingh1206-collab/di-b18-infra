module "rgm" {
  source = "../../environment/prod/azurerm_resource_group"
  rgs = var.rgs
}

module "sam" {
  depends_on = [ module.rgm ]
  source = "../../environment/prod/azurerm_storage_account"
  sas = var.sas
}
