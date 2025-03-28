resource "random_string" "sufix" {
  count   = 3
  length  = 8
  special = false
  upper   = false
  numeric = false
}