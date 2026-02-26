terraform {
  backend "s3" {
    bucket       = "dec-launchpad-state"
    key          = "env/key/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    profile      = "terraform"
  }
}
