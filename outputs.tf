output "vault_cluster_id" {
  description = "The ID of the Vault cluster"
  value       = hcp_vault_cluster.this.id
}

output "vault_cluster_endpoint" {
  description = "The endpoint URL of the Vault cluster"
  value       = hcp_vault_cluster.this.public_endpoint
  condition   = var.public_endpoint
}

output "hvn_id" {
  description = "The ID of the HVN"
  value       = hcp_hvn.this.id
}