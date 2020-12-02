locals {
  name    = "self-service-${var.environment}"
  product = "self-service"
  env_dns = "${var.environment}.selfservice.global.com"
}
