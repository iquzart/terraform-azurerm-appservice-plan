# Azure App Service Plan

Terraform module to create Azure App Service Plan

# Usage
```
data "azurerm_resource_group" "rg" {
  name = "RG_Apps"

}


module "appservice_plan" {
  source  = "github.com/iquzart/terraform-azurerm-appservice-plan"


  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  name                = var.appservice_plan_name
  kind                = var.kind
  tier                = var.tier
  size                = var.size
  tags                = local.tags

}

```

# Input Variables

| Name | Description | Type | Default | Required |
| --- | --- | --- | --- | --- |
| resource_group_name | The name of the resource group in which to create the App Service Plan. | string | na | yes |
| location | Specifies the supported Azure location where the resource exists. | string | na | yes |
| name | Specifies the name of the App Service Plan component. | string | na | yes |
| kind | The kind of the App Service Plan to create. | string | na | yes |
| size | Specifies the plan's instance size | string | na | yes |
| tier | Specifies the plan's pricing tier | string | na | yes |
| capacity | Specifies the number of workers associated with this App Service Plan | string | null | no |
| tags | A mapping of default tags to assign to the resource | map(string) | na | no |



# License
MIT
