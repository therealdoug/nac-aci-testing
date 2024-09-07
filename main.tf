terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
    }
  }
}

provider "aci" {
  username = "admin"
  password = "!v3G@!4@Y"
  url      = "https://sandboxapicdc.cisco.com"
}

module "aci" {
  #source  = "netascode/nac-aci/aci"
  source = "github.com/therealdoug/terraform-aci-nac-aci?ref=epg_subj_labels"
  #version = ">= 0.9.0"

  yaml_directories = ["data"]

  manage_access_policies    = true
  manage_fabric_policies    = false
  manage_pod_policies       = false
  manage_node_policies      = false
  manage_interface_policies = false
  manage_tenants            = true
}
