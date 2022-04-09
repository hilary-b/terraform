provider "azurerm" {
  features {}
  tenant_id                  = var.tenant_id
  subscription_id            = var.subscription_id
  skip_provider_registration = true
}

resource "azurerm_resource_group" "default" {
    name     = "main-aks-rg"
    location = "eastus"
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "site-aks"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "site-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = "standard_a2_v2"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control {
    enabled = true
  }
}