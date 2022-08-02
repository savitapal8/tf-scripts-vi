#provider variables
provider_project = "modular-scout-345114"
provider_region = "us-central1"

#crypto key variables
keyring_name = "keyring-vertexai81"
location = "us-central1"
#key_name = "vertexai-key81"
key_name = null
rotation_period = "100000s"
key_IAM_users = [
      "serviceAccount:service-1080178441487@compute-system.iam.gserviceaccount.com",
      "serviceAccount:service-1080178441487@gcp-sa-aiplatform.iam.gserviceaccount.com",
    ]
key_iam_role = "roles/cloudkms.cryptoKeyEncrypterDecrypter"

#notebook instance variables
notebook_instance_name = "notebooks-instance41"
instance_location = "us-central1-a"
machine_type = "e2-medium"
vm_image_project = "deeplearning-platform-release"
vm_image_family = "tf-latest-cpu"
vm_instance_owners = ["admin@hashicorptest.com"]
service_account = "1080178441487-compute@developer.gserviceaccount.com"
gpu_driver = true
boot_disk_type = "PD_SSD"
boot_disk_size = 110
no_public_ip = false
no_proxy_access = true
labels = { 
    k = "val" 
    }
metadata = {
    terraform = "true"
    proxy-mode = "service_account_demo"
  }
instance_IAM_users = [
      "user:pkhedekar@google.com",
    ]
instance_iam_role = "roles/viewer"

#notebook runtime variables
notebook_runtime_name = "notebooks-runtime-test41"
runtime_location = "us-central1" 
access_type = "SINGLE_USER"
runtime_owner = "admin@hashicorptest.com"
runtime_machine_type = "n1-standard-4"
runtime_boot_disk_type = "PD_STANDARD"
runtime_boot_disk_size = "100"
runtime_IAM_users = [
      "user:pkhedekar@google.com",
    ]
runtime_iam_role = "roles/viewer"

#vertex ai dataset
ai_dataset_name = "terraform4"
metadata_schema_uri = "gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml"
region = "us-central1"

#notebook runtime environment
notebooks_env_name = "runtimeenv4"
notebooks_zone = "us-central1-a"
image_repository = "gcr.io/deeplearning-platform-release/base-cpu"

#featurestore variables
featurestore_name = "featurestoresample4"
featurestore_labels = {
    foo = "bar"
  }
featurestore_region = "us-central1"
node_count = 2

#featurestore entitytype variable
entitytype_name = "sampleentitytype4"
entitytype_labels = {
    foo = "bar"
  }
snapshot_analysis = false
monitoring_interval = "86400s"
