provider "google-beta" {
  project     = var.provider_project
  region      = var.provider_region
  access_token = var.access_token
}

provider "google" {
  project     = var.provider_project
  region      = var.provider_region
  access_token = var.access_token
}

#crypto key 
module "google_crypto_key"{
    source = "./modules/google-kms-crypto-key"
    keyring_name = var.keyring_name
    location = var.location
    key_name = var.key_name
    rotation_period =  var.rotation_period
    key_IAM_users = var.key_IAM_users
    key_iam_role = var.key_iam_role
    labels = var.labels
}

output "key_id"{
    value = module.google_crypto_key.key_id
}

#notebook instance
module "notebooks_instance"{
    source = "./modules/google-notebooks-instance"
    notebook_instance_name = var.notebook_instance_name
    instance_location = var.instance_location
    machine_type = var.machine_type
    vm_image_project = var.vm_image_project
    vm_image_family = var.vm_image_family
    vm_instance_owners = var.vm_instance_owners
    service_account = var.service_account
    gpu_driver = var.gpu_driver
    boot_disk_type = var.boot_disk_type
    boot_disk_size = var.boot_disk_size
    no_public_ip = var.no_public_ip
    no_proxy_access = var.no_proxy_access
    labels = var.labels
    metadata = var.metadata
    kms_key_id = module.google_crypto_key.key_id
    instance_IAM_users = var.instance_IAM_users
    instance_iam_role = var.instance_iam_role
}

#Notebook Runtime
module "notebooks_runtime"{
    source = "./modules/google-notebooks-runtime"
    notebook_runtime_name = var.notebook_runtime_name
    runtime_location = var.runtime_location
    access_type = var.access_type
    labels = var.labels
    runtime_owner = var.runtime_owner
    runtime_machine_type = var.runtime_machine_type
    runtime_boot_disk_type = var.runtime_boot_disk_type
    runtime_boot_disk_size = var.runtime_boot_disk_size
    runtime_iam_role = var.runtime_iam_role
    runtime_IAM_users = var.runtime_IAM_users
}


#Vertex AI dataset
module "vertex_ai_dataset"{
    source = "./modules/google-vertex-ai-dataset"
    ai_dataset_name = var.ai_dataset_name
    metadata_schema_uri = var.metadata_schema_uri 
    region = var.region
    kms_key_id = module.google_crypto_key.key_id
    labels = var.labels
}

#Notebooks environment
module "runtime_environment"{
    source = "./modules/google-notebooks-environment"    
    notebooks_env_name = var.notebooks_env_name
    #labels = var.labels
    notebooks_zone = var.notebooks_zone
    image_repository = var.image_repository
}

#Vertex AI Featurestore
module "vertex_ai_featurestore"{
  source = "./modules/google-vertex-ai-featurestore"
  featurestore_name = var.featurestore_name
  featurestore_labels = var.featurestore_labels
  featurestore_region = var.featurestore_region
  node_count = var.node_count
  labels = var.labels
}

output "featurestore_id"{
    value = module.vertex_ai_featurestore.featurestore_id
}

#Vertex AI Featurestore Entitytype
module "vertex_ai_featurestore_entitytype"{
  source = "./modules/google-vertex-ai-featurestore-entitytype"
  entitytype_name = var.entitytype_name
  entitytype_labels = var.entitytype_labels
  featurestore_id = module.vertex_ai_featurestore.featurestore_id
  snapshot_analysis = var.snapshot_analysis
  monitoring_interval = var.monitoring_interval
}

