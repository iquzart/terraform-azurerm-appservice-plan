# Azure App Service Plan Variables

variable "appservice_plan_name" {
  description = "App service plan name"
  type        = string
  default     = ""
}

variable "plan_settings" {
  type        = map(string)
  description = "Definition of the dedicated plan to use"

  default = {
    kind     = "Linux" # Linux or Windows
    size     = "B1"
    tier     = "Basic"
  }
}

