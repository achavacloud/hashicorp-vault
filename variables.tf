variable "hvn_id" {
  description = "The ID of the HashiCorp Virtual Network (HVN)"
  type        = string
}

variable "cloud_provider" {
  description = "Cloud provider for the HVN (e.g., aws, azure)"
  type        = string
}

variable "region" {
  description = "Region for the HVN"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the HVN"
  type        = string
}

variable "cluster_id" {
  description = "ID for the Vault cluster"
  type        = string
}

variable "tier" {
  description = "Tier for the Vault cluster (e.g., development, standard)"
  type        = string
}

variable "public_endpoint" {
  description = "Enable public endpoint"
  type        = bool
  default     = false
}

variable "cluster_version" {
  description = "Version of the Vault cluster"
  type        = string
  default     = "latest"
}

variable "recovery_shares" {
  description = "Number of recovery shares"
  type        = number
  default     = 5
}

variable "recovery_threshold" {
  description = "Recovery threshold"
  type        = number
  default     = 3
}