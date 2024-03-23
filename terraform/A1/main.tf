module "instance1" {
  source            = "./ec2"
  vpc_cidr_block    = "10.0.0.0/16"
  subnet_cidr_block = "10.0.0.0/24"
  ami_id = "ami-0c101f26f147fa7fd"
  providers = {
    aws = aws.us-1
  }
}

module "instance2" {
  source            = "./ec2"
  vpc_cidr_block    = "10.0.0.0/16"
  subnet_cidr_block = "10.0.0.0/24"
  ami_id = "ami-019f9b3318b7155c5"
  providers = {
    aws = aws.us-2
  }
}
