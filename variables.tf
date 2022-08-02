#provider variables
variable "provider_project"{
    type = string
}
variable "provider_region"{
    type = string
}
variable "access_token"{
    type = string
    sensitive   = true
}

#crypto key module variables
variable "keyring_name"{
    type = string
    description = "keyring name"
}
variable "location"{
    type = string
    description = "location"
}
variable "key_name"{
    type = string
    description = "CMEK name"
}
variable "skip_initial_version_creation"{
    type = bool
    description = "skip_initial_version_creation"
}
variable "import_only"{
    type = bool
    description = "import_only"
}
variable "rotation_period"{
    type = string
    description = "key rotation period in seconds"
    default = "100000s"
}
variable "key_IAM_users"{
    type = list(string)
}
variable "key_iam_role"{
    type = string
}

#notebook instance module variables
variable "notebook_instance_name"{
    type = string
}

variable "instance_location"{
    type = string
}

variable "machine_type"{
    type = string
}

variable "vm_image_project"{
    type = string
}
variable "vm_image_family"{
    type = string
}
variable "vm_instance_owners"{
    type = list(string)
}
variable "service_account"{
    type = string
}
variable "gpu_driver"{
    type = bool
}
variable "boot_disk_type"{
    type = string
}
variable "boot_disk_size"{
    type = number
}
variable "no_public_ip"{
    type = bool
}
variable "no_proxy_access"{
    type = bool
}
variable "labels"{
    type = map
}
variable "metadata"{
    type = map
}
variable "instance_IAM_users"{
    type = list(string)
}
variable "instance_iam_role"{
    type = string
}
#notebook runtime variables
variable "notebook_runtime_name"{
    type = string
}
variable "runtime_location"{
    type = string
}
variable "access_type"{
    type = string
}
variable "runtime_owner"{
    type = string
}
variable "runtime_machine_type"{
    type = string
}
variable "runtime_boot_disk_type"{
    type = string
}
variable "runtime_boot_disk_size"{
    type = number
}
variable "runtime_IAM_users"{
    type = list(string)
}
variable "runtime_iam_role"{
    type = string
}

#vertex ai dataset variables
variable "ai_dataset_name"{
    type = string
}
variable "metadata_schema_uri"{
    type = string
}
variable "region"{
    type = string
}

#notebook runtime environment variables
variable "notebooks_env_name"{
    type = string
}
variable "notebooks_zone"{
    type = string
}
variable "image_repository"{
    type = string
}

#featurestore variables
variable "featurestore_name"{
    type = string
}
variable "featurestore_labels"{
    type = map
}
variable "featurestore_region"{
    type = string
}
variable "node_count"{
    type = number
}

#featurestore entitytype variables
variable "entitytype_name"{
    type = string
}
variable "entitytype_labels"{
    type = map
}
variable "snapshot_analysis"{
    type = bool
}
variable "monitoring_interval"{
    type = string
}
variable "org" {
  description = "org"
  type        = string
  default     = "wf"
}

variable "country" {
  description = "country"
  type        = string
  default     = "us"
}

variable "env" {
  description = "env"
  type        = string
  default     = "prod"
}

variable "appid" {
  description = "appid"
  type        = string
  default     = "demo"
}

variable "uid" {
  description = "uid"
  type        = string
  default     = "u1234"
}
