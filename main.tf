locals {
  log_analytics_clusters = { for k1, v1 in var.log_analytics_clusters : k1 => { identity = v1.identity, location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, size_gb = v1.size_gb, tags = v1.tags } }

  log_analytics_cluster_customer_managed_keys = merge([
    for k1, v1 in var.log_analytics_clusters : {
      for k2, v2 in coalesce(v1.log_analytics_cluster_customer_managed_keys, {}) :
      "${k1}/${k2}" => merge(v2, {
        log_analytics_cluster_id = module.log_analytics_clusters.log_analytics_clusters_id["${k1}"]
      })
    }
  ]...)
}

module "log_analytics_clusters" {
  source                 = "git::https://github.com/AeternaModules/azurerm_log_analytics_cluster.git?ref=v5.0.1"
  log_analytics_clusters = local.log_analytics_clusters
}

module "log_analytics_cluster_customer_managed_keys" {
  source                                      = "git::https://github.com/AeternaModules/azurerm_log_analytics_cluster_customer_managed_key.git?ref=v5.0.1"
  log_analytics_cluster_customer_managed_keys = local.log_analytics_cluster_customer_managed_keys
  depends_on                                  = [module.log_analytics_clusters]
}

