terraform {
  backend "s3" {
    bucket         = "aman-node-todo-terraform-state"
    key            = "node-todo/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}