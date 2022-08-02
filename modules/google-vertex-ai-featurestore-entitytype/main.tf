#Vertex AI Featurestore Entitytype
resource "google_vertex_ai_featurestore_entitytype" "entity" {
  provider = google-beta
  name     = var.entitytype_name
  labels = var.labels
  featurestore = var.featurestore_id
  monitoring_config {
    snapshot_analysis {
      disabled = var.snapshot_analysis
      monitoring_interval = var.monitoring_interval
    }
  }
}
