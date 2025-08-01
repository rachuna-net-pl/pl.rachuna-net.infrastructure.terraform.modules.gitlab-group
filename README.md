# <img src=".gitlab/avatar.png" alt="vagrant" height="20"/> Vagrant gitlab-group

[![](https://gitlab.com/pl.rachuna-net/infrastructure/terraform/modules/gitlab-group/-/badges/release.svg)](https://gitlab.com/pl.rachuna-net/infrastructure/terraform/modules/gitlab-group/-/releases)
[![](https://gitlab.com/pl.rachuna-net/infrastructure/terraform/modules/gitlab-group/badges/main/pipeline.svg)](https://gitlab.com/pl.rachuna-net/infrastructure/terraform/modules/gitlab-group/-/commits/main)

Moduł Terraform do automatycznego zakładania grup w GitLab wraz z etykietami, badge'ami oraz zmiennymi grupowymi.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 18.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 18.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_group.group](https://registry.terraform.io/providers/gitlabhq/gitlab/18.1.0/docs/resources/group) | resource |
| [gitlab_group_badge.badge](https://registry.terraform.io/providers/gitlabhq/gitlab/18.1.0/docs/resources/group_badge) | resource |
| [gitlab_group_label.label](https://registry.terraform.io/providers/gitlabhq/gitlab/18.1.0/docs/resources/group_label) | resource |
| [gitlab_group_variable.variable](https://registry.terraform.io/providers/gitlabhq/gitlab/18.1.0/docs/resources/group_variable) | resource |
| [gitlab_group.parent](https://registry.terraform.io/providers/gitlabhq/gitlab/18.1.0/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_avatar_types_json"></a> [allowed\_avatar\_types\_json](#input\_allowed\_avatar\_types\_json) | Path to allowed avatar types json | `string` | `""` | no |
| <a name="input_avatar"></a> [avatar](#input\_avatar) | Type of the icon for the group (default: from type) | `string` | `""` | no |
| <a name="input_avatars_dir"></a> [avatars\_dir](#input\_avatars\_dir) | Avatars directory png files | `string` | `""` | no |
| <a name="input_badges"></a> [badges](#input\_badges) | n/a | <pre>map(object({<br/>    link_url  = string<br/>    image_url = string<br/>  }))</pre> | `{}` | no |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | The group's default branch | `string` | `"main"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the gitlab group | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | n/a | <pre>map(object({<br/>    description = string<br/>    color       = string<br/>  }))</pre> | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the gitlab group | `string` | n/a | yes |
| <a name="input_parent_group"></a> [parent\_group](#input\_parent\_group) | Gitlab parent group | `string` | n/a | yes |
| <a name="input_variables"></a> [variables](#input\_variables) | n/a | <pre>map(object({<br/>    value             = string<br/>    description       = optional(string)<br/>    protected         = optional(bool)<br/>    masked            = optional(bool)<br/>    environment_scope = optional(string)<br/>  }))</pre> | `{}` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | The group's visibility | `string` | `"private"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_full_path"></a> [full\_path](#output\_full\_path) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->

---
## Contributions
Jeśli masz pomysły na ulepszenia, zgłoś problemy, rozwidl repozytorium lub utwórz Merge Request. Wszystkie wkłady są mile widziane!
[Contributions](CONTRIBUTING.md)

---
## License
Projekt licencjonowany jest na warunkach [Licencji MIT](LICENSE).

---
# Author Information
### &emsp; Maciej Rachuna
# <img src="https://gitlab.com/pl.rachuna-net/gitlab-profile/-/raw/main/assets/logo/website_logo_transparent_background.png" alt="rachuna-net.pl" height="100"/>

