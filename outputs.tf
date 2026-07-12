output "storage_encryption_scopes_id" {
  description = "Map of id values across all storage_encryption_scopes, keyed the same as var.storage_encryption_scopes"
  value       = { for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : k => v.id }
}
output "storage_encryption_scopes_infrastructure_encryption_required" {
  description = "Map of infrastructure_encryption_required values across all storage_encryption_scopes, keyed the same as var.storage_encryption_scopes"
  value       = { for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : k => v.infrastructure_encryption_required }
}
output "storage_encryption_scopes_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all storage_encryption_scopes, keyed the same as var.storage_encryption_scopes"
  value       = { for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : k => v.key_vault_key_id }
}
output "storage_encryption_scopes_name" {
  description = "Map of name values across all storage_encryption_scopes, keyed the same as var.storage_encryption_scopes"
  value       = { for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : k => v.name }
}
output "storage_encryption_scopes_source" {
  description = "Map of source values across all storage_encryption_scopes, keyed the same as var.storage_encryption_scopes"
  value       = { for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : k => v.source }
}
output "storage_encryption_scopes_storage_account_id" {
  description = "Map of storage_account_id values across all storage_encryption_scopes, keyed the same as var.storage_encryption_scopes"
  value       = { for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : k => v.storage_account_id }
}

