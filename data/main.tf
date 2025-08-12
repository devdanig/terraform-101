data "azurerm_resource_group" "imported_rg" {
  name = "grupoPrevio"
}

resource "azurerm_storage_account" "storagedani" {
    name = "datapreviadevdani"
    resource_group_name = data.azurerm_resource_group.imported_rg.name
    location = data.azurerm_resource_group.imported_rg.location
    account_tier = "Standard"
    account_replication_type = "GRS"
}