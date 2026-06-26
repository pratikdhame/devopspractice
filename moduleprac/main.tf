provider "aws" {
  region = var.aws_region
}


module "my_vpc" {
  source            = "./modules/vpc"
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
  vpc_name          = "tf-module-vpc"
}

# 👉 Call EC2 module (uses output from VPC module)
module "my_ec2" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.my_vpc.subnet_id   # 🔗 chaining modules
  instance_name = "tf-module-ec2"
}
