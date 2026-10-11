variable "mcp_config_secrets" {
  description = <<EOT
Map of mcp_config_secrets, attributes below
Required:
    - mcp_config_id
    - org_id
Optional:
    - secret_expires_after_hours
EOT

  type = map(object({
    mcp_config_id              = string
    org_id                     = string
    secret_expires_after_hours = optional(number)
  }))
}

