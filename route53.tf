#module "external_zone" {
#  source = "github.com/global-devops-terraform/dns-zone?ref=v0.13.4"
#
#  name        = "external-${var.environment}"
#  domain_name = local.env_dns
#
#  tags = {
#    Product     = local.product
#    Environment = var.environment
#  }
#}