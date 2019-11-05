resource "heroku_app" "staging" {
  name = "${var.name}-staging"
  region = "${var.region}"
  buildpacks = "${var.buildpacks}"
}

resource "heroku-app" "production" {
  name = "${var.name}-production"
  region = "${var.region}"
  buildpacks = "${var.buildpacks}"
}
