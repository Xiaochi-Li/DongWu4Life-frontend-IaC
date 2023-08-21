
provider "aws" {
  region = var.region
  profile = "iamadmin-general"
  default_tags {
    tags = {
      created_by = "Xiaochi Li"
      environment = var.environment
    }
  }
}