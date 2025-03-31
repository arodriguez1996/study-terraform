terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.92.0"
    }
  }

  required_version = "1.11.3"
}

provider "aws" {
  region = "us-east-1"
  default_tags {
   tags = var.common_tags 
  }
}
