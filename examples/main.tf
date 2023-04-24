module "exa-infra" {
  source = "git::ssh://devops.scmservice.us-ashburn-1.oci.oraclecloud.com/namespaces/id9de6bj2yv6/projects/claro-devops/repositories/terraform-oci-exa-infra?ref=v0.2.1"

  for_each = var.exa_infra

  # exa infra
  tenancy_ocid                = var.tenancy_ocid
  ad_number                   = each.value["ad_number"]
  compartment_id              = data.oci_identity_compartments.cmp_lvl3[each.key].compartments[0].id
  infrastructure_display_name = each.key
  shape                       = each.value["shape"]
  compute_count               = each.value["compute_count"]
  storage_count               = each.value["storage_count"]

  # tags
  defined_tags  = lookup(each.value, "defined_tags", {})
  freeform_tags = lookup(each.value, "freeform_tags", {})
}