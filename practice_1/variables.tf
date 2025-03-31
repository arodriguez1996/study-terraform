variable "cidr_virginia" {
  type        = string
  description = "CIDR of virginia vpc"
}

variable "subnets" {
  description ="list of subnets"
}

variable "common_tags" {
  type        = map(string)
  description = "common tags of vpc's"
}