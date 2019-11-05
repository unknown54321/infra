terraform {
  backend "s3" {
  bucket = "pgr301geigerteller"
  key = "unknown54321/terraform.tfstate"
  region = "eu-north-1"
  }
}

provider "statuscake" {
  version = "1.0.0"
  username = "unknown54321"
}

provider "heroku" {}

provider "opsgenie" {
  version = "0.2.3"
  api_url = "api.eu.opsgenie.com"
}


