#module "shared_services" {
#  source = "github.com/global-devops-terraform/peering?ref=v0.12.4"
#
#  vpc_id                  = module.vpc.vpc_id
#  other                   = module.common.shared_services
#  private_route_table_ids = module.vpc.private_route_table_ids
#  public_route_table_ids  = module.vpc.public_route_table_ids
#}
#
#module "devops_team" {
#  source = "github.com/global-devops-terraform/peering?ref=v0.12.4"
#
#  vpc_id                  = module.vpc.vpc_id
#  other                   = module.common.devops_team
#  private_route_table_ids = module.vpc.private_route_table_ids
#  public_route_table_ids  = module.vpc.public_route_table_ids
#}
#
#module "ct_team" {
#  source = "github.com/global-devops-terraform/peering?ref=v0.12.4"
#
#  vpc_id                  = module.vpc.vpc_id
#  other                   = module.common.ct_team
#  private_route_table_ids = module.vpc.private_route_table_ids
#  public_route_table_ids  = module.vpc.public_route_table_ids
#}
