resource "azurerm_storage_account" "sa" {
  for_each                 = toset(var.sa_name)
  name                     = each.value
  location                 = "centralindia"
  resource_group_name      = "rg1"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
