# Azure App service Plan

resource "azurerm_app_service_plan" "plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.plan_settings["kind"]
  reserved            = var.plan_settings["kind"] == "Linux" ? true : null

  sku {
    tier = var.plan_settings["tier"]
    size = var.plan_settings["size"]
  }

  tags = var.tags
}

