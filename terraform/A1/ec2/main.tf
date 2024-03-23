
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "test-vpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_block

  tags = {
    Name = "test-subnet"
  }
}

resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = "t2.small"
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = "test-instance"
  }
}