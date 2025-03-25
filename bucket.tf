provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "tasks" {
  count  = 3
  bucket = "tasks-${random_string.sufix[count.index].id}"
  tags = {
    Owner       = "deepmerge"
    Environment = "Dev"
  }
}