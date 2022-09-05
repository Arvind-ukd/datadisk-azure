resource "azurerm_managed_disk" "example" {
  name                 = "arvind-data-disk-1"
  location             =  "Central India"
  resource_group_name  = data.azurerm_resource_group.example
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "80"
  }

  resource "azurerm_virtual_machine_data_disk_attachment" "example1" {
  managed_disk_id    = azurerm_managed_disk.example.id
  virtual_machine_id = data.azurerm_virtual_machine.example.id
  lun                = "10"
  caching            = "ReadWrite"
}