resource "heroku-app" "development" {
  name = "${var.heroku-deployapp}"
  region = "${var.heroku-region}"
  buildpacks = "${var.heroku-appbuildpacks}"
}

resource "heroku-app" "staging" {
  name = "${var.name}-staging"
  region = "${var.heroku-region}"
  buildpacks = "${var.buildpacks-appbuildpacks}"
}

resource "heroku-app" "production" {
  name = "${var.name}-production"
  region = "${var.heroku-region}"
  buildpacks = "${var.buildpacks-appbuildpacks}"
}
