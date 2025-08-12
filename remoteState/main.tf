resource "azurerm_resource_group" "rg" {
  location = "brazilsouth"
  name = "devdanig"
}


resource "azurerm_storage_account" "storage_account" {
  name                     = "devdanig"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  public_network_access_enabled = false


  tags = {
    environment = "staging"
  }
}
