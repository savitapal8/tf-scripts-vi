#keyring creation
resource "google_kms_key_ring" "keyring" {
  name     = var.keyring_name
  location = var.location
}

#crypto key creation
resource "google_kms_crypto_key" "key" {
  name            = var.key_name
  key_ring        = google_kms_key_ring.keyring.id
  rotation_period = var.rotation_period
  labels = var.labels
  lifecycle {
    prevent_destroy = false
  }
}

#crypto-key-IAM Policy
data "google_iam_policy" "adminn" {
  binding {
    role = var.key_iam_role
    members = var.key_IAM_users
  }
}

resource "google_kms_crypto_key_iam_policy" "crypto_key" {
  crypto_key_id = google_kms_crypto_key.key.id
  policy_data = data.google_iam_policy.adminn.policy_data
}

output "key_id"{
    value = google_kms_crypto_key.key.id
}
