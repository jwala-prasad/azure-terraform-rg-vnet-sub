rgs = {
  rg001 = {
    name     = "dev-rg"
    location = "southindia"
  }
}

vnts = {
  vnet001 = {
    name                = "dev-vnet"
    resource_group_name = "dev-rg"
    location            = "southindia"
    address_space       = ["10.192.0.0/24"]
  }
}
snts = {
  snt001 = {
    name                 = "dev-sub"
    resource_group_name  = "dev-rg"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.192.0.0/26"]
  }
}