terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "deeksha-sa"
    container_name       = "my-container"
    key                  = "terraformVM.tfstate"
    resource_group_name  = "deeksha-rg"
  }
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}