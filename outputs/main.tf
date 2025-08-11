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
  location = "mexicocentral"
  name = var.rg_nombre
}