#Notebook Runtime
resource "google_notebooks_runtime" "runtime" {
  name = var.notebook_runtime_name
  location = var.runtime_location
  access_config {
    access_type = var.access_type
    runtime_owner = var.runtime_owner
  }
  virtual_machine {
    virtual_machine_config {
      machine_type = var.runtime_machine_type
      data_disk {
        initialize_params {
          disk_size_gb = var.runtime_boot_disk_size
          disk_type = var.runtime_boot_disk_type
        }
      }
      encryption_config {
        kms_key = var.kms_key_id
      }
      internal_ip_only = true
      labels = {
        application_division = "pci",
        application_name     = "demo",
        application_role     = "app",
        au                   = "0223092",
        created              = "20211122",
        environment          = "prod",
        gcp_region           = "us",
        owner                = "hybridenv",
      }
    }
  }
}

data "google_iam_policy" "admin" {
  binding {
    role = var.runtime_iam_role
    members = var.runtime_IAM_users
  }
}

resource "google_notebooks_runtime_iam_policy" "policy" { 
  project = google_notebooks_runtime.runtime.project
  location = google_notebooks_runtime.runtime.location
  runtime_name = google_notebooks_runtime.runtime.name
  policy_data = data.google_iam_policy.admin.policy_data
}
