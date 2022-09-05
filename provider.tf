terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.21.1"
    }
  }
}

provider "azurerm" {
  features{}
  subscription_id   = "05221eb3-62ea-4448-bd50-220757debb83"
  tenant_id         = "012c7f08-9121-41cf-a656-927814549a5c"
  client_id         = "81abff88-0f99-4805-b8fb-07fd552e2c45"
  client_secret     = "C~h8Q~KXawpy1GdWY_LY.Gj1UI~uK4LJrpMAWdco"
}
