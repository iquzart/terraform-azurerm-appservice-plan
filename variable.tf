# Azure App Service Plan Variables

variable "resource_group_name" {
  description = "App service plan resource group name"
  type        = string
  default     = ""
}

variable "location" {
  description = "App service location"
  type        = string
  default     = ""
}

variable "name" {
  description = "App service plan name"
  type        = string
  default     = ""
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
    "Environment" = ""
    "BU"          = ""
  }
}
