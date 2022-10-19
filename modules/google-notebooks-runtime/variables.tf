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
variable "kms_key_id"{
    type = string
}
