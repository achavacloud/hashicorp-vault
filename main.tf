terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "~> 0.33.0"
    }
  }
}

resource "hcp_hvn" "this" {
  hvn_id         = var.hvn_id
  cloud_provider = var.cloud_provider
  region         = var.region
  cidr_block     = var.cidr_block
}

resource "hcp_vault_cluster" "this" {
  cluster_id         = var.cluster_id
  hvn_id             = hcp_hvn.this.id
  tier               = var.tier
  public_endpoint    = var.public_endpoint
  cluster_version    = var.cluster_version
  recovery_shares    = var.recovery_shares
  recovery_threshold = var.recovery_threshold
}