####################################################
# Outputs
####################################################

output "webapp_url" {
  description = "Azure Web App URL"
  value       = "https://${azurerm_linux_web_app.webapp.default_hostname}"
}

output "resource_group_name" {
  description = "Azure Resource Group Name"
  value       = azurerm_resource_group.rg.name
}

output "app_service_plan_name" {
  description = "Azure App Service Plan Name"
  value       = azurerm_service_plan.plan.name
}
