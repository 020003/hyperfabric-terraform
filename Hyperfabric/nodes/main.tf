terraform {
  required_providers {
    hyperfabric = {
      source = "cisco-open/hyperfabric"
    }
  }
}

resource "hyperfabric_node" "spine001" {
  fabric_id = var.fabricId
  name = "spine001"
  description = "This node is part of a Cisco Nexus Hyperfabric"
  model_name = "HF6100-32D"
  roles = ["SPINE"]
  location    = "LABROOM"
  labels = [
    "DHC",
    "blue"
  ]
  annotations = [
    {
      data_type = "STRING"
      name      = "color"
      value     = "red"
    },
    {
      name  = "rack"
      value = "R20"
    }
  ]
}

resource "hyperfabric_node" "spine002" {
  fabric_id = var.fabricId
  name = "spine002"
  description = "This node is part of a Cisco Nexus Hyperfabric"
  model_name = "HF6100-32D"
  roles = ["SPINE"]
  location    = "LABROOM"
  labels = [
    "DHC",
    "blue"
  ]
  annotations = [
    {
      data_type = "STRING"
      name      = "color"
      value     = "red"
    },
    {
      name  = "rack"
      value = "R20"
    }
  ]
}


resource "hyperfabric_node" "leaf001" {
  fabric_id = var.fabricId
  name = "leaf001"
  description = "This node is part of a Cisco Nexus Hyperfabric"
  model_name = "HF6100-32D"
  roles = ["LEAF"]
  location    = "LABROOM"
  labels = [
    "DHC",
    "blue"
  ]
  annotations = [
    {
      data_type = "STRING"
      name      = "color"
      value     = "red"
    },
    {
      name  = "rack"
      value = "R20"
    }
  ]
}

resource "hyperfabric_node" "leaf002" {
  fabric_id = var.fabricId
  name = "leaf002"
  description = "This node is part of a Cisco Nexus Hyperfabric"
  model_name = "HF6100-32D"
  roles = ["LEAF"]
  location    = "LABROOM"
  labels = [
    "DHC",
    "blue"
  ]
  annotations = [
    {
      data_type = "STRING"
      name      = "color"
      value     = "red"
    },
    {
      name  = "rack"
      value = "R20"
    }
  ]
}
