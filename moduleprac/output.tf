output "vpc_id" {
  description = "ID of the Created VPC"
  value       = module.my_vpc.vpc_id
}

output "subnet_id" {
  description = "ID of the created SUBNET"
  value       = module.my_vpc.subnet_id
}

output "ec2_instance_id" {
  description = "ID of created EC2 Instance"
  value       = module.my_ec2.instance_id
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.my_ec2.public_ip
}
