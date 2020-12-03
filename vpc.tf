module "vpc" {
  source = "github.com/global-devops-terraform/vpc?ref=v1.5.2"

  name                    = local.name
  cidr                    = var.cidr_block
  environment             = var.environment
  product                 = local.product
  availability_zones      = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  dx_gateway_id           = var.dx_gateway_id
  kubernetes_cluster_name = local.name
  create_rds              = true
  create_persistence      = true
}
