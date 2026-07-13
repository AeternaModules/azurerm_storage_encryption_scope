variable "storage_encryption_scopes" {
  description = <<EOT
Map of storage_encryption_scopes, attributes below
Required:
    - name
    - source
    - storage_account_id
Optional:
    - infrastructure_encryption_required
    - key_vault_key_id
EOT

  type = map(object({
    name                               = string
    source                             = string
    storage_account_id                 = string
    infrastructure_encryption_required = optional(bool)
    key_vault_key_id                   = optional(string)
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

