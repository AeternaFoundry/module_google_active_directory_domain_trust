variable "active_directory_domain_trusts" {
  description = <<EOT
Map of active_directory_domain_trusts, attributes below
Required:
    - domain
    - target_dns_ip_addresses
    - target_domain_name
    - trust_direction
    - trust_handshake_secret
    - trust_type
Optional:
    - deletion_policy
    - project
    - selective_authentication
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    domain                   = string
    target_dns_ip_addresses  = set(string)
    target_domain_name       = string
    trust_direction          = string
    trust_handshake_secret   = string
    trust_type               = string
    deletion_policy          = optional(string)
    project                  = optional(string)
    selective_authentication = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

