terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
  }
  cloud {
    organization = "JoselinTP"
    workspaces {
      name = "terraform-github-actions"
    }
  }
}
provider "aws" {
  region = "us-west-1"  # Cambia a tu región deseada
}
