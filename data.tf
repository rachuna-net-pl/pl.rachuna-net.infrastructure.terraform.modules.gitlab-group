data "gitlab_group" "parent" {
  count     = var.parent_group != "" ? 1 : 0
  full_path = var.parent_group
}
