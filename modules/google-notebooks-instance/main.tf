data "google_compute_network" "my_network" {
  name = "default"
}

data "google_compute_subnetwork" "my_subnetwork" {
  name   = "default"
  region = "us-central1"
}

#Notebook Instance
resource "google_notebooks_instance" "instance" { 
  name = var.notebook_instance_name
  location = var.instance_location
  machine_type = var.machine_type
  disk_encryption = "CMEK"

  vm_image {
    project      = var.vm_image_project
    image_family = var.vm_image_family
  }

  instance_owners = var.vm_instance_owners
  service_account = var.service_account
 
  kms_key = var.kms_key_id
  install_gpu_driver = var.gpu_driver
  boot_disk_type = var.boot_disk_type
  boot_disk_size_gb = var.boot_disk_size

  no_public_ip = var.no_public_ip
  no_proxy_access = var.no_proxy_access

  network = data.google_compute_network.my_network.id
  subnet = data.google_compute_subnetwork.my_subnetwork.id

  labels = var.labels

  metadata = var.metadata
}

#Notebook instance and runtime IAM policy setup
data "google_iam_policy" "admin" {
  binding {
    role = var.instance_iam_role
    members = var.instance_IAM_users
  }
}

resource "google_notebooks_instance_iam_policy" "policy" { 
  project = google_notebooks_instance.instance.project
  location = google_notebooks_instance.instance.location
  instance_name = google_notebooks_instance.instance.name
  policy_data = data.google_iam_policy.admin.policy_data
}

