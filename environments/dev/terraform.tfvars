infra_config = {
  resource_groups = {
    "mk-rg" = {
      location = "East US"
      tags     = { Environment = "Dev", ManagedBy = "Terraform" }
    }
  }
  container_registries = {
    "acr10249" = {
      rg_key = "mk-rg"
      sku    = "Basic"
    }
  }
  kubernetes_clusters = {
    "aks" = {
      rg_key     = "mk-rg"
      dns_prefix = "aks"
      default_node_pool = {
        name       = "default"
        node_count = 2
        vm_size    = "Standard_D2_v4"
      }
    }
  }
}
