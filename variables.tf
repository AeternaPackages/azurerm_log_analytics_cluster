variable "log_analytics_clusters" {
  description = <<EOT
Map of log_analytics_clusters, attributes below
Required:
    - location
    - name
    - resource_group_name
    - identity (block)
Optional:
    - size_gb
    - tags
Nested log_analytics_cluster_customer_managed_keys (azurerm_log_analytics_cluster_customer_managed_key):
    Required:
        - key_vault_key_id
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    size_gb             = optional(number) # Default: 100
    tags                = optional(map(string))
    identity = object({
      identity_ids = optional(set(string))
      type         = string
    })
    log_analytics_cluster_customer_managed_keys = optional(map(object({
      key_vault_key_id = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.log_analytics_clusters) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.log_analytics_clusters : [for kk in keys(coalesce(v0.log_analytics_cluster_customer_managed_keys, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
