variable "var_rg" {
  description = "A map for resource group configuration"
  type = map(object(
    {
      name : string
      location : string
      tags : optional(map(string))
    }
  ))
}
