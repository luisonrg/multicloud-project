terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "740eca41-ea88-4c94-b73b-07eb31e9715a"
  client_id       = "005ea058-e570-4b0a-8ebf-0eac97b0f2cd"
  client_secret   = "DNN8Q~Aivp734Dmz.Un4QJpea2uQ_vOZK469Hdxi"
  tenant_id       = "d0390d94-ca4c-4923-aa0a-a65a1858e163"
}