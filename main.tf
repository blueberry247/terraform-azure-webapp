####################################################
# Resource Group
####################################################

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = local.common_tags
}

####################################################
# App Service Plan
####################################################

resource "azurerm_service_plan" "plan" {
  name                = var.service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  os_type  = "Linux"
  sku_name = "B1"

  tags = local.common_tags
}

####################################################
# Linux Web App
####################################################

resource "azurerm_linux_web_app" "webapp" {
  name                = var.webapp_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id

  https_only = true

  site_config {

    always_on = false

    application_stack {
      java_version   = "17"
    }
  }

  tags = local.common_tags
}
