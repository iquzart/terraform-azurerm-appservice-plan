# Azure App service Plan

resource "azurerm_app_service_plan" "plan" {
  name                = var.appservice_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = var.plan_settings["kind"]
  reserved            = var.plan_settings["kind"] == "Linux" ? true : null

  sku {
    tier = var.plan_settings["tier"]
    size = var.plan_settings["size"]
  }

  tags = var.tags
}

