# Vault Cluster Module

A Terraform module to create a HashiCorp Cloud Platform (HCP) Vault cluster.

## Usage

```hcl
module "vault_cluster" {
  source  = "your-username/vault-cluster/hcp"
  version = "1.0.0"

  hvn_id             = "hvn-12345"
  cloud_provider     = "aws"
  region             = "us-west-2"
  cidr_block         = "10.0.0.0/16"
  cluster_id         = "vault-cluster-1"
  tier               = "development"
  public_endpoint    = true
  cluster_version    = "1.8.0"
  recovery_shares    = 5
  recovery_threshold = 3
}
```