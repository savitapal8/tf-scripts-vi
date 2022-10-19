#Vertex AI dataset
resource "google_vertex_ai_dataset" "dataset" {
  display_name          = var.ai_dataset_name
  metadata_schema_uri   = var.metadata_schema_uri
  region                = var.region
  labels                = var.labels
  #encryption_spec{
  #    kms_key_name = var.kms_key_id
  #}
}
