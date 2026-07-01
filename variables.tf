####################################################
# Azure Subscription
####################################################

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

####################################################
# Resource Group
####################################################

variable "resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
  default     = "rg-devops-webapp"
}

####################################################
# Location
####################################################

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "UK West"
}

####################################################
# App Service Plan
####################################################

variable "service_plan_name" {
  description = "Azure App Service Plan Name"
  type        = string
  default     = "asp-devops-webapp"
}

####################################################
# Web App
####################################################

variable "webapp_name" {
  description = "Azure Linux Web App Name"
  type        = string
  default     = "devops-webapp-farooq"
}
