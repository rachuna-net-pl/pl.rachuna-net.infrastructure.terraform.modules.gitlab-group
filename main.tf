resource "gitlab_group" "group" {
  name             = var.name
  path             = var.name
  description      = var.description
  parent_id        = var.parent_group != "" ? data.gitlab_group.parent[0].id : null
  visibility_level = var.visibility
  default_branch   = var.default_branch
  avatar           = var.icon_type != "" ? "${path.module}/images/${var.icon_type}.png" : null
  avatar_hash      = var.icon_type != "" ? filesha256("${path.module}/images/${var.icon_type}.png") : null
}

resource "gitlab_group_label" "label" {
  for_each = var.labels

  group       = gitlab_group.group.id
  name        = each.key
  description = each.value.description
  color       = each.value.color
}

resource "gitlab_group_badge" "badge" {
  for_each = var.badges

  group     = gitlab_group.group.id
  name      = each.key
  link_url  = each.value.link_url
  image_url = each.value.image_url
}

resource "gitlab_group_variable" "variable" {
  for_each = var.variables

  group             = gitlab_group.group.id
  key               = each.key
  value             = each.value.value
  description       = each.value.description
  protected         = each.value.protected
  masked            = each.value.masked
  environment_scope = each.value.environment_scope
}