resource "azurerm_storage_account" "sa-prod" {
    for_each = var.sas
    name = each.value.sa_name 
    resource_group_name = each.value.rg_name
    location = each.value.location
    account_tier = "LRS"
    account_replication_type = "Standard"
}

variable "sas" {}