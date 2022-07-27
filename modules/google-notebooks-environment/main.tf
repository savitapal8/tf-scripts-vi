#Google Notebooks Env
resource "google_notebooks_environment" "environment" {
  name = var.notebooks_env_name
  location = var.notebooks_zone 
  container_image {
    repository = var.image_repository
  } 
}