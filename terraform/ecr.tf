resource "aws_ecr_repository" "node_todo" {
  name                 = "nodejs/to-do"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "node-todo-ecr"
  }
}