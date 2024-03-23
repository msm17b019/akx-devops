terraform {
  required_version = ">= 1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
  }
}

provider "aws" {
  alias  = "us-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-2"
  region = "us-east-2"
}
