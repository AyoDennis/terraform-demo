terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "< 2.7.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">2.0.0"
    }
  }
}

provider "local" {
  # Configuration options
}

provider "random" {
  # Configuration options
}