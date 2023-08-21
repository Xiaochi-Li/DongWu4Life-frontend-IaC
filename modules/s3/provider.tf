
provider "aws" {
  region = var.region
  default_tags {
    tags = {
      created_by = "Xiaochi Li"
      environment = var.environment
    }
  }
}