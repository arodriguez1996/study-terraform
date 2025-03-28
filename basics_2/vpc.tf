resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.cidr_virginia
  tags       = merge(var.common_tags, { Name = "VPC_virginia" })
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.cidr_ohio
  tags       = merge(var.common_tags, { Name = "VPC_ohio" })
  provider   = aws.ohio
}

variable "common_tags" {
  default = {
    env    = "Dev"
    author = "deepmerge"
  }
}