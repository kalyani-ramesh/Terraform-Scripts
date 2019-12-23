resource "azurerm_resource_group" "Kalyani_Test" {
  for_each = {
    x_resourcegroup = "Central US"
    y_resourcegroup = "Central US"
    z_resourcegroup = "Central US"
      }
  name     = each.key
  location = each.value
  

    tags = {
        environment = "Kalyani_Test"
        aa-app-id = "123456"
        aa-costcenter = "1234/1234"
        aa-sdlc-environment = "nonprod"
        aa-security = "reserved"
  }
}
