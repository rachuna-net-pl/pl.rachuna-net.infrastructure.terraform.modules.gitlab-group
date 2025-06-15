locals {
  allowed_icon_types = jsondecode(file("${path.module}/data/allowed_icon_types.json"))
}