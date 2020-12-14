module "bastion" {
  source = "github.com/global-devops-terraform/bastion?ref=v0.55.1"

  name            = local.name
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
  public_subnets  = module.vpc.public_subnets
  product         = local.product
  environment     = var.environment
  logs_s3_bucket  = module.logs.bucket_name
  logs_prefix     = "bastion"
  dns_zone_id     = module.external_zone.zone_id
  domain_name     = local.env_dns

  allow_cidr = flatten([
    module.common.global_lan_cidr,
    var.bastion_nlb_cidr
  ])

  ssh_principals = [
    "selfservice-${var.environment}-bastion",
    "selfservice-${var.environment}"
  ]
}
