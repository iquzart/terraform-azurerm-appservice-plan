# Azure App service plan output

output "app_plan_name" {
  description = "Name of the App Service Plan"
  value       = azurerm_app_service_plan.plan.name
}

output "app_plan_kind" {
  description = "Kind of the App Service Plan"
  value       = azurerm_app_service_plan.plan.kind
}

output "app_plan_workers" {
  description = "Number of workers created for the App Service Plan"
  value       = azurerm_app_service_plan.plan.maximum_number_of_workers
}

output "app_plan_id" {
  description = "Tier of the App Service Plan"
  value       = azurerm_app_service_plan.plan.id
}

