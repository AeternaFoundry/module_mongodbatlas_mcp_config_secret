resource "mongodbatlas_mcp_config_secret" "mcp_config_secrets" {
  for_each = var.mcp_config_secrets

  mcp_config_id              = each.value.mcp_config_id
  org_id                     = each.value.org_id
  secret_expires_after_hours = each.value.secret_expires_after_hours
}

