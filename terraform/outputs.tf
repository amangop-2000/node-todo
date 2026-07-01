output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.node_todo.id
}

output "public_ip" {
  description = "Public IP of EC2"
  value       = aws_instance.node_todo.public_ip
}

output "public_dns" {
  description = "Public DNS of EC2"
  value       = aws_instance.node_todo.public_dns
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public.id
}

output "ecr_repository_url" {
  description = "ecr repository"
  value       =  aws_ecr_repository.node_todo.repository_url
}