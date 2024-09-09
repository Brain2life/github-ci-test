provider "aws" {
  region = "us-east-1"
}

# Fetch the latest Amazon Linux 2 AMI in the us-east-1 region
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "ec2_instance" {
  ami             = data.aws_ami.amazon_linux.id
  instance_type   = "t2.micro"
}
