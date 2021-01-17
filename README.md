# Azure App Service Plan
Terraform module to create Azure App Service Plan

# Usage
```
data "azurerm_resource_group" "rg" {
  name = "RG_Apps"

}


module "appservice_plan" {
  source  = "github.com/iquzart/terraform-azurerm-appservice-plan"
  #version = "0.x.y"

  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  name                = var.appservice_plan_name
  plan_settings       = var.plan_settings
  tags                = var.tags
}

```

# Variables
```
variable "appservice_plan_name" {
  description = "App service plan name"
  type        = string
  default     = "App-plan-B1-Linux"
}

variable "plan_settings" {
  type        = map(string)
  description = "Definition of the dedicated plan to use"

  default = {
    kind = "Linux" # Linux or Windows
    size = "B1"
    tier = "Basic"
  }
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default = {
    "Environment" = "Development"
    "BU"          = "Information Technology"
  }
}

```

# License
MIT
