variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet to launch EC2 in"
  type        = string
}

variable "instance_name" {
  description = "Name tag for EC2"
  type        = string
}
