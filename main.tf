
# Resource Group
resource "azurerm_resource_group" "ranjeet-rg" {
  name     = "ranjeet-rg-demo"
  location = "Central India"
}

# VNet
resource "azurerm_virtual_network" "vnet" {
  name                = "ranjeet-demo-vnet"
  location            = azurerm_resource_group.ranjeet-rg.location
  resource_group_name = azurerm_resource_group.ranjeet-rg.name
  address_space       = ["10.0.0.0/16"]
}

# Subnet
resource "azurerm_subnet" "subnet" {
  name                 = "ranjeet-demo-subnet"
  resource_group_name  = azurerm_resource_group.ranjeet-rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Public IP
resource "azurerm_public_ip" "pip" {
  name                = "ranjeet-demo-lb-pip"
  location            = azurerm_resource_group.ranjeet-rg.location
  resource_group_name = azurerm_resource_group.ranjeet-rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# Load Balancer
resource "azurerm_lb" "lb" {
  name                = "ranjeet-demo-loadbalancer"
  location            = azurerm_resource_group.ranjeet-rg.location
  resource_group_name = azurerm_resource_group.ranjeet-rg.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}

# Output
output "load_balancer_name" {
  value = azurerm_lb.lb.name
}