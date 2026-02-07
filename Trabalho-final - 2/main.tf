terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket = "fiap-platform-engineering-terraform-state"
    key    = "trabalho-final/${terraform.workspace}.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}

module "count" {
  source = "./modules/count"

  aws_region        = var.aws_region
  aws_amis          = var.aws_amis
  key_name          = var.key_name
  path_to_key       = var.path_to_key
  instance_username = var.instance_username
  instance_type     = var.instance_type
  instance_count    = var.instance_count
  project           = var.project
}
