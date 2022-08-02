#Vertex AI Featurestore
resource "google_vertex_ai_featurestore" "featurestore" {
  provider = google-beta
  name     = var.featurestore_name
  labels = var.labels
  region   = var.featurestore_region
  online_serving_config {
    fixed_node_count = var.node_count
  }
}

output "featurestore_id"{
    value = google_vertex_ai_featurestore.featurestore.id
}
