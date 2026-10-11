output "active_directory_domain_trusts_id" {
  description = "Map of id values across all active_directory_domain_trusts, keyed the same as var.active_directory_domain_trusts except keys with no id are omitted"
  value       = { for k, v in google_active_directory_domain_trust.active_directory_domain_trusts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "active_directory_domain_trusts_deletion_policy" {
  description = "Map of deletion_policy values across all active_directory_domain_trusts, keyed the same as var.active_directory_domain_trusts except keys with no deletion_policy are omitted"
  value       = { for k, v in google_active_directory_domain_trust.active_directory_domain_trusts : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "active_directory_domain_trusts_domain" {
  description = "Map of domain values across all active_directory_domain_trusts, keyed the same as var.active_directory_domain_trusts except keys with no domain are omitted"
  value       = { for k, v in google_active_directory_domain_trust.active_directory_domain_trusts : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "active_directory_domain_trusts_project" {
  description = "Map of project values across all active_directory_domain_trusts, keyed the same as var.active_directory_domain_trusts except keys with no project are omitted"
  value       = { for k, v in google_active_directory_domain_trust.active_directory_domain_trusts : k => v.project if v.project != null && length(v.project) > 0 }
}
output "active_directory_domain_trusts_selective_authentication" {
  description = "Map of selective_authentication values across all active_directory_domain_trusts, keyed the same as var.active_directory_domain_trusts except keys with no selective_authentication are omitted"
  value       = { for k, v in google_active_directory_domain_trust.active_directory_domain_trusts : k => v.selective_authentication if v.selective_authentication != null }
}
output "active_directory_domain_trusts_target_dns_ip_addresses" {
  description = "Map of target_dns_ip_addresses values across all active_directory_domain_trusts, keyed the same as var.active_directory_domain_trusts except keys with no target_dns_ip_addresses are omitted"
  value       = { for k, v in google_active_directory_domain_trust.active_directory_domain_trusts : k => v.target_dns_ip_addresses if v.target_dns_ip_addresses != null && length(v.target_dns_ip_addresses) > 0 }
}
output "active_directory_domain_trusts_target_domain_name" {
  description = "Map of target_domain_name values across all active_directory_domain_trusts, keyed the same as var.active_directory_domain_trusts except keys with no target_domain_name are omitted"
  value       = { for k, v in google_active_directory_domain_trust.active_directory_domain_trusts : k => v.target_domain_name if v.target_domain_name != null && length(v.target_domain_name) > 0 }
}
output "active_directory_domain_trusts_trust_direction" {
  description = "Map of trust_direction values across all active_directory_domain_trusts, keyed the same as var.active_directory_domain_trusts except keys with no trust_direction are omitted"
  value       = { for k, v in google_active_directory_domain_trust.active_directory_domain_trusts : k => v.trust_direction if v.trust_direction != null && length(v.trust_direction) > 0 }
}
output "active_directory_domain_trusts_trust_handshake_secret" {
  description = "Map of trust_handshake_secret values across all active_directory_domain_trusts, keyed the same as var.active_directory_domain_trusts except keys with no trust_handshake_secret are omitted"
  value       = { for k, v in google_active_directory_domain_trust.active_directory_domain_trusts : k => v.trust_handshake_secret if v.trust_handshake_secret != null && length(v.trust_handshake_secret) > 0 }
  sensitive   = true
}
output "active_directory_domain_trusts_trust_type" {
  description = "Map of trust_type values across all active_directory_domain_trusts, keyed the same as var.active_directory_domain_trusts except keys with no trust_type are omitted"
  value       = { for k, v in google_active_directory_domain_trust.active_directory_domain_trusts : k => v.trust_type if v.trust_type != null && length(v.trust_type) > 0 }
}

