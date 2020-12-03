output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}

output "availability_zones" {
  value       = module.vpc.availability_zones
  description = "Availability zones"
}

output "persistence_subnets" {
  value       = module.vpc.persistence_subnets
  description = "Persistence subnet IDs"
}

output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "Private subnet IDs"
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "Public subnet IDs"
}

output "cluster_name" {
  value       = module.eks.name
  description = "Kubernetes cluster name"
}

output "worker_role" {
  value       = module.eks.worker_role
  description = "Kubernetes worker role"
}

output "cluster_oidc_issuer_url" {
  description = "The URL on the EKS cluster OIDC Issuer"
  value       = module.eks.cluster_oidc_issuer_url
}

output "rds_subnet_group" {
  value       = module.vpc.rds_subnet_group
  description = "RDS subnet group"
}

#output "zone_id" {
#  value       = module.external_zone.zone_id
#  description = "External DNS zone ID for each env"
#}

#output "domain_name" {
#  value       = module.external_zone.domain_name
#  description = "External DNS domain name for each env"
#}

output "bucket_name" {
  description = "Name of the logging Bucket"
  value       = module.logs.bucket_name
}

output "cluster_sg" {
  description = "Cluster primary SG"
  value       = module.eks.cluster_sg
}

output "worker_sg" {
  description = "Worker SG"
  value       = module.eks.worker_sg
}

output "environment" {
  description = "The dev/prod environment"
  value       = var.environment
}

#output "bastion_security_group_id" {
#  value       = module.bastion.security_group_id
#  description = "Bastion security group ID"
#}
