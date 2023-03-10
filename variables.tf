variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment."
}

variable "infrastructure_display_name" {
  description = "(Required) (Updatable) The user-friendly name for the cloud Exadata infrastructure resource. The name does not need to be unique."
  type        = string
}

variable "shape" {
  description = "(Required) The shape of the cloud Exadata infrastructure resource."
  type        = string
}

variable "ad_number" {
  description = "The availability domain number of the instance. If none is provided, it will start with ramdom."
  type        = string
}

variable "compute_count" {
  description = "The number of compute servers for the cloud Exadata infrastructure."
  type        = string
  default     = null
}

variable "storage_count" {
  description = "(Optional) (Updatable) The number of storage servers for the cloud Exadata infrastructure."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "simple key-value pairs to tag the created resources using freeform OCI Free-form tags."
  type        = map(any)
  default = {}
}

variable "defined_tags" {
  description = "simple key-value pairs to tag the created resources using defined OCI tags."
  type        = map(any)
  default = {}
}