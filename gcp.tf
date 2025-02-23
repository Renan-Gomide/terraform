provider "google" {
project     = "devops-2025-br"
region      = "us-central1"
zone        = "us-central1-c"
credentials = file("serviceaccount.json")
}

# Para criar um projeto preciso ter uma organização
resource "google_project" "devops" {
name       = "DevOps"
project_id = "devops-2025-br"
auto_create_network = false
billing_account = "xxxxxx-xxxxxx-xxxxxx"
}

