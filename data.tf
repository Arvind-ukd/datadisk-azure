data "azurerm_resource_group" "example" {
  name = "arvind-rg"
}

output "id" {
  value = data.azurerm_resource_group.example.id
}

data "azurerm_virtual_machine" "example" {
  name                = "centralindiavm"
  resource_group_name = data.azurerm_resource_group.example.id
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.example.id
}