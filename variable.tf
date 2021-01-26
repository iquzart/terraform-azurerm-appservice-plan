# Azure App Service Plan Variables

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the App Service Plan component."
  type        = string
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists"
  type        = string
}

variable "name" {
  description = "(Required) Specifies the name of the App Service Plan component. Changing this forces a new resource to be created."
  type        = string
}

variable "kind" {
  description = "(Optional) The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan). Defaults to Windows. Changing this forces a new resource to be created"
  type        = string
}

variable "size" {
  description = "(Required) Specifies the plan's instance size"
  type        = string
}

variable "tier" {
  description = "(Required) Specifies the plan's pricing tier"
  type        = string
}

variable "capacity" {
  description = "(Optional) Specifies the number of workers associated with this App Service Plan"
  type        = string
  default     = null 
}

variable "tags" {
  description = "(Optional) A mapping of default tags to assign to the resource"
  type        = map(string)
}
