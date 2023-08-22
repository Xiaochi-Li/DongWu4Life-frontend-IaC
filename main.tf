terraform {
  cloud {
    organization = "sean-li-terraform-cloud-learning"

    workspaces {
      name = "DongWu4Life"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

module "static_site" {
  source      = "./modules/s3"
  domain_name = "dongwu4life.com"
  url         = "top10.dongwu4life.com"
  region      = "us-east-1"
  environment = "production"
} 