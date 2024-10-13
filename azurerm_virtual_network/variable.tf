variable "vnet" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    dns_servers         = optional(list(string), [])
    tags                = optional(map(string), {})
    ddos_protection_plan = optional(object({
      id     = string
    }), null)
  }))
}
