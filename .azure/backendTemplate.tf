terraform {
  backend "azurerm" {
    resource_group_name  = "quketest"
    storage_account_name = "newqukesa"
    container_name       = "newcontainer"
    key                  = "{{.GroupName}}.tfstate"
    use_azuread_auth     = true
    subscription_id      = "de3c4d5e-af08-451a-a873-438d86ab6f4b"
  }
}
