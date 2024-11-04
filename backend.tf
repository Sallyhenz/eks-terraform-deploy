terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "infra/terraform.state"
    bucket         = "sallyz-terraform-backend-bucket"
    region         = "us-west-1"
    dynamodb_table = "sallyz-terraform-state-locking"
  }
}
