resource "heroku-app" "ci" {
  name = "${var.app.prefix}-app-ci"
}

resource "heroku_pipeline" "geiger-app" {
  name = "${var.name}"
}

resource "heroku_pipeline_coupling" "staging" {
  app = "${heroku_app.staging.name}"
  pipeline = "heroku_pipeline.geiger-deploy.id"
  stage = "staging"
}

resource "heroku_pipeline_coupling" "production" {
  app = "${heroku_app.production.name}"
  pipleine = "${heroku_pipeline.geiger_deploy.id}"
  stage= "production"
}
