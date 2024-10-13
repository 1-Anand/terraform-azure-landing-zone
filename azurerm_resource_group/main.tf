resource "azurerm_resource_group" "rgs" {
  for_each = var.var_rg
  name     = each.value.name
  location = each.value.location
  tags     = each.value.tags

}