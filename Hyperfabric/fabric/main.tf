terraform {
  required_providers {
    hyperfabric = {
      source = "cisco-open/hyperfabric"
    }
  }
}

resource "hyperfabric_fabric" "tfFabric" {
  name        = var.fabricName
  description = var.fabricDescription
  address     = var.fabricAddress
  city        = var.fabricCity
  country     = var.fabricCountry
  location    = var.fabricLocation
  labels = [
    "${var.fabricDepartment}",
    "red"
  ]
  annotations = [
    {
      data_type = "STRING"
      name      = "color"
      value     = "red"
    },
    {
      name  = "rack"
      value = "1337"
    }
  ]
}