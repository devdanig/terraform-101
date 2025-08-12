terraform {
  backend "azurerm" {
    storage_account_name = "statesterraformdevdani"
    container_name = "states"
    key = "statesdani.tfstate"
  }
}