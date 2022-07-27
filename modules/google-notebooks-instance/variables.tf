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
variable "kms_key_id"{
    type = string
}
variable "instance_IAM_users"{
    type = list(string)
}
variable "instance_iam_role"{
    type = string
}
