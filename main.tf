resource "google_active_directory_domain_trust" "active_directory_domain_trusts" {
  for_each = var.active_directory_domain_trusts

  domain                   = each.value.domain
  target_dns_ip_addresses  = each.value.target_dns_ip_addresses
  target_domain_name       = each.value.target_domain_name
  trust_direction          = each.value.trust_direction
  trust_handshake_secret   = each.value.trust_handshake_secret
  trust_type               = each.value.trust_type
  deletion_policy          = each.value.deletion_policy
  project                  = each.value.project
  selective_authentication = each.value.selective_authentication

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

