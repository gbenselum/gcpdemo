terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

#### conector #####
provider "google" {
  version = "3.5.0"
  project = "qwiklabs-gcp-04-55616caeb9ee"
  region  = "us-central1"
  zone    = "us-central1-c"
}

# crear vm
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]
  boot_disk {
    initialize_params {
            image = "cos-cloud/cos-stable"
    }
  }
