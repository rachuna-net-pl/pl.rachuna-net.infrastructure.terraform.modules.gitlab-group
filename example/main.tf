module "_ansible" {
  source = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.3.0"

  name           = "ansible"
  description    = "Repozytoria i moduły do zarządzania konfiguracją i automatyzacją zadań przy użyciu Ansible."
  parent_group   = local.parent_name
  visibility     = "public"
  default_branch = "main"
  icon_type      = "ansible"

  labels = {
    "ansible-roles" = {
      description = "changes ansible roles",
      color       = "#36454f"
    }
    "ansible-playbooks" = {
      description = "changes ansible playbooks",
      color       = "#36454f"
    }
    "ansible-parameters" = {
      description = "parametrization",
      color       = "#36454f"
    }
  }

  variables = {
    VAULT_SKIP_VERIFY = {
      description      = "",
      value            = "true",
      environmentScope = "*"
    }
    ANSIBLE_USER = {
      description = "Użytkownik Ansible do zarządzania maszynami vm."
      masked      = true
      value       = "user"
    }
    ANSIBLE_PASSWORD = {
      description = "Hasło użytkownika Ansible do maszyn testowych molecule."
      masked      = true
      value       = "password"
    }
  }

}

module "ansible" {
  source = "./ansible/"
}