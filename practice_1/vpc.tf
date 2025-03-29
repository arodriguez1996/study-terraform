resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.cidr_virginia
  tags       = merge(var.vpc_common_tags, { Name = var.vpc_tag_name })
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc_virginia.id
  cidr_block = var.public_subnet
  map_public_ip_on_launch = true # this make public the subnet
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc_virginia.id
  cidr_block = var.private_subnet
}