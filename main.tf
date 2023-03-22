resource "azurerm_resource_group" "rg" {
  location = var.aks_location
  name     = var.aks_resource_group_name
  tags = {
    "env" = "dev"
  }
}

module "aks" {
  source                            = "Azure/aks/azurerm"
  version                           = "6.6.0"
  resource_group_name               = var.aks_resource_group_name
  prefix                            = var.aks_prefix
  agents_pool_name                  = var.aks_agents_pool_name
  location                          = var.aks_location
  agents_size                       = var.aks_agents_size
  rbac_aad                          = var.rbac_aad
  role_based_access_control_enabled = var.role_based_access_control_enabled
  depends_on = [
    azurerm_resource_group.rg
  ]
}