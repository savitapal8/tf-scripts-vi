#provider variables
provider_project = "modular-scout-345114"
provider_region = "us-central1"

#crypto key variables
keyring_name = "wf-us-prod-kms-app01-u0002"
location = "us-central1"
key_name = "wf-us-prod-kms-app01-u0003"
skip_initial_version_creation = true
import_only = true
rotation_period = "7776000s"
key_IAM_users = [
      "serviceAccount:service-1080178441487@compute-system.iam.gserviceaccount.com",
      "serviceAccount:service-1080178441487@gcp-sa-aiplatform.iam.gserviceaccount.com",
    ]
key_iam_role = "roles/cloudkms.cryptoKeyEncrypterDecrypter"

#notebook instance variables
notebook_instance_name = "wf-us-prod-vtx-app01-u001"
instance_location = "us-central1-a"
machine_type = "e2-medium"
vm_image_project = "deeplearning-platform-release"
vm_image_family = "tf-latest-cpu"
vm_instance_owners = ["admin@hashicorptest.com"]
service_account = "cloud-composer-sa-id@modular-scout-345114.iam.gserviceaccount.com"
gpu_driver = true
boot_disk_type = "PD_SSD"
boot_disk_size = 110
no_public_ip = true
no_proxy_access = false
labels = { 
      gcp_region = "US",
      owner = "hybridenv",
      application_division = "pci",
      application_name = "demo",
      application_role = "app",
      environment = "dev",
      au = "Hybrid code = 0223092",
      created = "20220802", 
}
metadata = {
    terraform = "true"
    proxy-mode = "service_account"
  }
instance_IAM_users = [
      "user:pkhedekar@google.com",
    ]
instance_iam_role = "roles/viewer"

#notebook runtime variables
notebook_runtime_name = "wf-us-prod-vtx-app01-u002"
runtime_location = "us-central1" 
access_type = "SERVICE_ACCOUNT"
runtime_owner = "admin@hashicorptest.com"
runtime_machine_type = "n1-standard-4"
runtime_boot_disk_type = "PD_STANDARD"
runtime_boot_disk_size = "100"
runtime_IAM_users = [
      "user:pkhedekar@google.com",
    ]
runtime_iam_role = "roles/viewer"

#vertex ai dataset
ai_dataset_name = "wf-us-prod-vtx-app01-u003"
metadata_schema_uri = "gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml"
region = "us-central1"

#notebook runtime environment
notebooks_env_name = "wf-us-prod-vtx-app01-u008"
notebooks_zone = "us-central1-a"
image_repository = "gcr.io/deeplearning-platform-release/base-cpu"

#featurestore variables
featurestore_name = "wf-us-prod-vtx-app01-u004"
featurestore_labels = {
    foo = "bar"
  }
featurestore_region = "us-central1"
node_count = 2

#featurestore entitytype variable
entitytype_name = "wf-us-prod-vtx-app01-u005"
entitytype_labels = {
    foo = "bar"
  }
snapshot_analysis = false
monitoring_interval = "86400s"
