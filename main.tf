# Azure App service Plan

terraform {
  required_version = "> 0.12.0"
}

resource "azurerm_app_service_plan" "plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.kind
  reserved            = var.kind == "Linux" ? true : null

  sku {
    tier     = var.tier
    size     = var.size
    capacity = var.tier == "Dynamic" ? null : var.capacity
  }

  tags = var.tags
}

