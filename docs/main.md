## Wymagania

- Dostęp do instancji GitLab z odpowiednimi uprawnieniami.
- Provider: [gitlabhq/gitlab](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs)

## Przykład użycia

```hcl
module "group_pl_rachuna-net" {
  source         = "git@gitlab.com:pl.rachuna-net/infrastructure/terraform/modules/gitlab-group.git?ref=v1.0.0"
  name           = "pl.rachuna-net"
  description    = "https://rachuna-net.pl"
  parent_group   = "" # Brak grupy nadrzędnej
  visibility     = "public"
  default_branch = "main"
  labels = {
    "bug" = {
      description = "Błąd"
      color       = "#FF0000"
    }
  }
  icon_type = "root"
  badges = {
    "release" = {
      link_url  = "https://gitlab.com/%%{project_path}/-/releases"
      image_url = "https://gitlab.com/%%{project_path}/-/badges/release.svg"
    }
  }
  variables = {
    "MY_VAR" = {
      value       = "secret"
      description = "Opis zmiennej"
      protected   = true
      masked      = true
    }
  }
}
```

## Argumenty wejściowe

| Nazwa           | Typ     | Wymagany | Domyślny    | Opis                                      |
|-----------------|---------|----------|-------------|--------------------------------------------|
| parent_group    | string  | tak      | -           | Ścieżka nadrzędnej grupy (lub pusty dla root) |
| name            | string  | tak      | -           | Nazwa grupy                               |
| description     | string  | tak      | -           | Opis grupy                                |
| visibility      | string  | nie      | "private"   | Widoczność grupy: `private`, `internal`, `public` |
| default_branch  | string  | nie      | "main"      | Domyślna gałąź                            |
| icon_type       | string  | nie      | ""          | Typ ikony (np. `root`, `gitlab`, `packer`, itd.) |
| labels          | map     | nie      | {}          | Mapowanie etykiet grupowych               |
| badges          | map     | nie      | {}          | Mapowanie badge'y grupowych               |
| variables       | map     | nie      | {}          | Mapowanie zmiennych grupowych             |

## Argumenty wyjściowe

| Nazwa      | Opis                                  |
|------------|---------------------------------------|
| full_path  | Pełna ścieżka utworzonej grupy        |
| id         | ID utworzonej grupy w GitLab          |

## Dostępne typy ikon

- ansible
- containers
- dev-tools
- gitlab
- infrastructure
- mikrotik
- packer
- proxmox
- root
- semantic-release
- terraform