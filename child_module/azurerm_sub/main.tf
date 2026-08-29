variable"snts"{}
resource"azurerm_subnet""snts"{
    for_each=var.snts
    name =each.value.name
    virtual_network_name = each.value.virtual_network_name
    resource_group_name=each.value.resource_group_name
    address_prefixes=each.value.address_prefixes
}