variable "vpc_cidr_block" {
  type = string
  description = "The CIDR block of VPC"
}

variable "subnet_cidr_block" {
  type = string
  description = "The CIDR block of subnet"
}

variable "ami_id" {
  type = string
  description = "The AMI id of the image"
}