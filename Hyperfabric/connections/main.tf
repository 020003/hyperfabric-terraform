terraform {
  required_providers {
    hyperfabric = {
      source = "cisco-open/hyperfabric"
    }
  }
}

data "hyperfabric_node" "spine001" {
  fabric_id = var.fabricId
  name = "spine001"
}

data "hyperfabric_node" "spine002" {
  fabric_id = var.fabricId
  name = "spine002"
}

data "hyperfabric_node" "leaf001" {
  fabric_id = var.fabricId
  name = "leaf001"
}

data "hyperfabric_node" "leaf002" {
  fabric_id = var.fabricId
  name = "leaf002"
}


resource "hyperfabric_connection" "uplink001" {
  fabric_id = var.fabricId
  local = {
    node_id = data.hyperfabric_node.spine001.node_id
    port_name = "Ethernet1_1"
  }
  remote = {
    node_id = data.hyperfabric_node.leaf001.node_id
    port_name = "Ethernet1_1"
  }
}

resource "hyperfabric_connection" "uplink002" {
  fabric_id = var.fabricId
  local = {
    node_id = data.hyperfabric_node.spine001.node_id
    port_name = "Ethernet1_2"
  }
  remote = {
    node_id = data.hyperfabric_node.leaf002.node_id
    port_name = "Ethernet1_1"
  }
}

resource "hyperfabric_connection" "uplink003" {
  fabric_id = var.fabricId
  local = {
    node_id = data.hyperfabric_node.spine002.node_id
    port_name = "Ethernet1_1"
  }
  remote = {
    node_id = data.hyperfabric_node.leaf001.node_id
    port_name = "Ethernet1_2"
  }
}

resource "hyperfabric_connection" "uplink004" {
  fabric_id = var.fabricId
  local = {
    node_id = data.hyperfabric_node.spine002.node_id
    port_name = "Ethernet1_2"
  }
  remote = {
    node_id = data.hyperfabric_node.leaf002.node_id
    port_name = "Ethernet1_2"
  }
}
