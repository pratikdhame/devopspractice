variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for subnet"
  type        = string
}

variable "availability_zone" {
  description = "AZ for subnet"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for VPC"
  type        = string
}
