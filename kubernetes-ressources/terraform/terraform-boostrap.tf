terraform {
  backend "gcs" {
    bucket  = "infra-jdxlabs-terraform-states"
    prefix  = "kubernetes-formation"
    project = "infra-jdxlabs"
    region = "europe-west1"
  }
}

module "bootstrap-training" {
  MOD_JSON_PATH       = "infra-jdxlabs.json"
  MOD_PROJECT         = "infra-jdxlabs"
  MOD_REGION          = "europe-west1"
  MOD_COUNT           = 2

  source = "modules"
}
