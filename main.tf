locals {
  default_freeform_tags = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-oci-exa-infra"
  }
  merged_freeform_tags = merge(var.freeform_tags, local.default_freeform_tags)
}

# This resource provides the Cloud Exadata Infrastructure resource in Oracle Cloud Infrastructure Database service.
resource "oci_database_cloud_exadata_infrastructure" "main" {
    #Required
    availability_domain   = var.ad_number
    compartment_id        = var.compartment_id
    display_name          = var.infrastructure_display_name
    shape                 = var.shape

    #Optional
    compute_count = var.compute_count
    storage_count = var.storage_count

    defined_tags  = var.defined_tags
    freeform_tags = local.merged_freeform_tags
}