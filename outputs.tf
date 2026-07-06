output "storage_encryption_scopes" {
  description = "All storage_encryption_scope resources"
  value       = azurerm_storage_encryption_scope.storage_encryption_scopes
}
output "storage_encryption_scopes_infrastructure_encryption_required" {
  description = "List of infrastructure_encryption_required values across all storage_encryption_scopes"
  value       = [for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : v.infrastructure_encryption_required]
}
output "storage_encryption_scopes_key_vault_key_id" {
  description = "List of key_vault_key_id values across all storage_encryption_scopes"
  value       = [for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : v.key_vault_key_id]
}
output "storage_encryption_scopes_name" {
  description = "List of name values across all storage_encryption_scopes"
  value       = [for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : v.name]
}
output "storage_encryption_scopes_source" {
  description = "List of source values across all storage_encryption_scopes"
  value       = [for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : v.source]
}
output "storage_encryption_scopes_storage_account_id" {
  description = "List of storage_account_id values across all storage_encryption_scopes"
  value       = [for k, v in azurerm_storage_encryption_scope.storage_encryption_scopes : v.storage_account_id]
}

