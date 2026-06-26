variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "aws_type" {
  description = "AWS Instance Type"
  type        = string
  default     = "t3.small"
}

variable "vpc_cidr" {
  description = "AWS vpc cidr block "
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Aws vpc subnet cidr block"
  type        = string
  default     = "10.0.0.0/24"
}

variable "availability_zone" {
  description = "Availability zone"
  type        = string
  default     = "ap-south-1a"
}

variable "ami_id" {
  description = "ami id for ec2 creation"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}
