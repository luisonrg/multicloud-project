resource "azurerm_network_security_rule" "allow_rdp_ssh" {
  name                        = "Allow-RDP-SSH"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "3389" # Cambia a "3389" para RDP si usas Windows
  source_address_prefix       = var.user_ip
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.nsg.name
}