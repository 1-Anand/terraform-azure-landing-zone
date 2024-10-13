resource "azurerm_virtual_network" "vnets" {
  for_each            = var.vnet
  name                = each.value.name
  location            = each.value.location
  address_space       = each.value.address_space
  resource_group_name = each.value.resource_group_name
  dns_servers         = each.value.dns_servers
  tags                = each.value.tags

  # Optional DDoS Protection Plan
  dynamic "ddos_protection_plan" {
    for_each = each.value.ddos_protection_plan != null ? [each.value.ddos_protection_plan] : []
    content {
      id     = ddos_protection_plan.value.id
      enable = true
    }
  }
}
