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
variable "labels"{
    type = map
}
