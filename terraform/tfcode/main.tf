provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "tf_aws_instance" {
  ami           = "ami-006f82a1d5a27da54"
  instance_type = "t2.micro"

  tags = {
    Name = "my-ec2-instance"
  }
}
