# --- azurerm_log_analytics_cluster ---
output "log_analytics_clusters_cluster_id" {
  description = "Map of cluster_id values across all log_analytics_clusters, keyed the same as var.log_analytics_clusters"
  value       = module.log_analytics_clusters.log_analytics_clusters_cluster_id
}

output "log_analytics_clusters_identity" {
  description = "Map of identity values across all log_analytics_clusters, keyed the same as var.log_analytics_clusters"
  value       = module.log_analytics_clusters.log_analytics_clusters_identity
}

output "log_analytics_clusters_location" {
  description = "Map of location values across all log_analytics_clusters, keyed the same as var.log_analytics_clusters"
  value       = module.log_analytics_clusters.log_analytics_clusters_location
}

output "log_analytics_clusters_name" {
  description = "Map of name values across all log_analytics_clusters, keyed the same as var.log_analytics_clusters"
  value       = module.log_analytics_clusters.log_analytics_clusters_name
}

output "log_analytics_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all log_analytics_clusters, keyed the same as var.log_analytics_clusters"
  value       = module.log_analytics_clusters.log_analytics_clusters_resource_group_name
}

output "log_analytics_clusters_size_gb" {
  description = "Map of size_gb values across all log_analytics_clusters, keyed the same as var.log_analytics_clusters"
  value       = module.log_analytics_clusters.log_analytics_clusters_size_gb
}

output "log_analytics_clusters_tags" {
  description = "Map of tags values across all log_analytics_clusters, keyed the same as var.log_analytics_clusters"
  value       = module.log_analytics_clusters.log_analytics_clusters_tags
}

# --- azurerm_log_analytics_cluster_customer_managed_key ---
output "log_analytics_cluster_customer_managed_keys_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all log_analytics_cluster_customer_managed_keys, keyed the same as var.log_analytics_cluster_customer_managed_keys"
  value       = module.log_analytics_cluster_customer_managed_keys.log_analytics_cluster_customer_managed_keys_key_vault_key_id
}

output "log_analytics_cluster_customer_managed_keys_log_analytics_cluster_id" {
  description = "Map of log_analytics_cluster_id values across all log_analytics_cluster_customer_managed_keys, keyed the same as var.log_analytics_cluster_customer_managed_keys"
  value       = module.log_analytics_cluster_customer_managed_keys.log_analytics_cluster_customer_managed_keys_log_analytics_cluster_id
}


