terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "e1e5a8d9-fca7-41f3-9b6a-722846c2a5fc"
}

resource "azurerm_resource_group" "rg" {
  location = "brazilsouth"
  name = "storageGroup"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "storageaccountdevdani"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  public_network_access_enabled = false


  tags = {
    environment = "staging"
  }
}

output "cadena_conexion" {
  value = azurerm_storage_account.storage_account.primary_connection_string
  sensitive = true
}