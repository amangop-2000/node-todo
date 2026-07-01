data "aws_ami" "ubuntu" {
  most_recent = true

  owners = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "node_todo" {

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  subnet_id = aws_subnet.public.id

  key_name = "devops_demo"

  vpc_security_group_ids = [
    aws_security_group.node_todo_sg.id
  ]

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  associate_public_ip_address = true

  user_data = file("${path.module}/userdata.sh")
  user_data_replace_on_change = true

  tags = {
    Name = "node-todo-server"
  }
}