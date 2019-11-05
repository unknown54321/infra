resource "heroku-app" "development" {
  name = "${var.heroku-deploy-app}"
  region = "${var.heroku-region}"
  buildpacks = "${var.heroku-appbuildpacks}"
}

resource "heroku-app" "staging" {
  name = "${var.heroku-staging}"
  region = "${var.heroku-region}"
  buildpacks = "${var.buildpacks-app-buildpacks}"
}

resource "heroku-app" "production" {
  name = "${var.heroku-production}"
  region = "${var.heroku-region}"
  buildpacks = "${var.buildpacks-app-buildpacks}"
}
