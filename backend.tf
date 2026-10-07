terraform {
  # Exemple de configuration backend S3 / S3-compatible
  # backend "s3" {
  #   bucket                      = "mon-tfstate-bucket"
  #   key                         = "env/dev/terraform.tfstate"
  #   region                      = "eu-west-3"
  #   endpoint                    = "http://localhost:9000" # Si MinIO
  #   skip_credentials_validation = true
  #   skip_metadata_api_check     = true
  #   force_path_style            = true
  # }

  # Pour notre lab local, on configure explicitement le backend local sur un chemin personnalisé
  backend "local" {
    path = "/mnt/host/c/Users/oc/remote_state/terraform.tfstate"
  }
}
