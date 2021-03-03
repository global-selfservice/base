resource "aws_route53_zone" "zone" {
  name = local.env_dns

  tags = {
    Product     = local.product
    Environment = var.environment
  }
}
