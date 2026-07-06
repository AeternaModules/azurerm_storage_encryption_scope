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
  # --- Unconfirmed validation candidates, derived from azurerm_storage_encryption_scope's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from storageValidate.StorageEncryptionScopeName] !regexp.MustCompile("^[0-9a-zA-Z]{4,63}$").MatchString(input)
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: source
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
}

