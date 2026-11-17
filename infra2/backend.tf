terraform {
  backend "s3" {
    bucket       = "tfstate-backend2-5cd20a83"
    key          = "infra2/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}