data "terraform_remote_state" "account" {
  backend = "s3"

  config = {
    bucket         = var.production_account ? "global-self-service-terraform-state" : "global-self-service-dev-terraform-state"
    key            = "account.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

locals {
  external_zone_domain_name = data.terraform_remote_state.account.outputs.external_domain_name
  external_zone_id          = data.terraform_remote_state.account.outputs.external_zone_id
}
