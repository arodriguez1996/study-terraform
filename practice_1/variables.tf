variable "cidr_virginia" {
  type        = string
  description = "CIDR of virginia vpc"
}

variable "public_subnet" {
  type        = string
  description = "CIDR public subnet"
}

variable "private_subnet" {
  type        = string
  description = "CIDR private subnet"
}

variable "vpc_tag_name" {
  type        = string
  description = "name of vpc"
}

variable "vpc_common_tags" {
  type        = map(string)
  description = "common tags of vpc's"
  default = {
    env    = "Dev"
    author = "deepmerge"
  }
}