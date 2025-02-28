terraform {
  required_providers {
    hyperfabric = {
      source = "cisco-open/hyperfabric"
    }
  }
}


provider "hyperfabric" {
  
   token = ""
}

module "createFabric" {
source = "./Hyperfabric/fabric"
fabricAddress = var.fabricAddress
fabricCity = var.fabricCity
fabricCountry = var.fabricCountry
fabricDepartment = var.fabricDepartment
fabricLocation = var.fabricLocation
fabricDescription = var.fabricDescription
fabricName = var.fabricName
}

module "createNodes" {
depends_on = [ module.createFabric ]
source = "./Hyperfabric/nodes"
fabricId = module.createFabric.fabricId.id
}

module "createUplinks" {
depends_on = [ module.createFabric, module.createNodes ]
source = "./Hyperfabric/connections"
fabricId = module.createFabric.fabricId.id
}