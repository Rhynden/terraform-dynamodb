terraform {
  required_providers {
    aws  = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "eu-central-1"
}

resource "aws_dynamodb_table" "custom_table" {
  name = var.table_name
  billing_mode = var.table_billing_mode
  hash_key = "employee-id"
  attribute {
    name = "employee-id"
    type = "S"
  }
  tags = {
    environment = "${var.environment}"
  }
}