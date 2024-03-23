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
  alias  = "eu-w1"
  region = "eu-west-1"
}

provider "aws" {
  alias  = "eu-c1"
  region = "eu-central-1"
}

provider "aws" {
  alias  = "eu-n1"
  region = "eu-north-1"
}

# Example
# Creating the VPC in the eu-west-1 region
resource "aws_vpc" "vpc1" {
  provider = aws.eu-w1
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "test-vpc-west"
  }
}

# Creating the VPC in the eu-central-1 region
resource "aws_vpc" "vpc2" {
  provider = aws.eu-c1
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "test-vpc-central"
  }
}

# Creating the VPC in the eu-north-1 region
resource "aws_vpc" "vpc3" {
  provider = aws.eu-n1
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "test-vpc-north"
  }
}
