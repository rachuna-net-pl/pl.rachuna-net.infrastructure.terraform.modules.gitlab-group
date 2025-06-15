variable "parent_group" {
  type = string
}

variable "name" {
  type = string
}

variable "description" {
  type = string
}


variable "visibility" {
  type        = string
  default     = "private"
  description = "The group's visibility"

  validation {
    condition = contains([
      "private",
      "internal",
      "public"
    ], var.visibility)
    error_message = "Unsupported group visibility"
  }
}

variable "default_branch" {
  type        = string
  default     = "main"
  description = "The group's default branch"
}

variable "icon_type" {
  type        = string
  description = "Type of the icon for the group (default: from type)"
  default     = ""

  validation {
    condition     = contains(local.allowed_icon_types, var.icon_type)
    error_message = "Unsupported group type"
  }
}

variable "labels" {
  type = map(object({
    description = string
    color       = string
  }))
  default = {}
}

variable "badges" {
  type = map(object({
    link_url  = string
    image_url = string
  }))
  default = {}
}

variable "variables" {
  type = map(object({
    value             = string
    description       = optional(string)
    protected         = optional(bool)
    masked            = optional(bool)
    environment_scope = optional(string)
  }))
  default = {}
}