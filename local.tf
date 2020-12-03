locals {
  name    = "selfservice-${var.environment}"
  product = "selfservice"
  env_dns = "${var.environment}.selfservice.global.com"
}
