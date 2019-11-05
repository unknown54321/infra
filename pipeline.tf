resource "heroku_pipeline" "deploy" {
  name = "${var.heroku-pipeline-name}"
}

resource "heroku_pipeline_coupling" "deploy" {
  app = "${heroku_app.deploy.name}"
  pipeline = "heroku_pipeline.deploy.id"
  stage = "staging"
}

resource "heroku_pipeline_coupling" "staging" {
  app = "${heroku_app.staging.name}"
  pipeline = "heroku_pipeline.pipeline.id"
  stage = "staging"
}

resource "heroku_pipeline_coupling" "production" {
  app = "${heroku_app.production.name}"
  pipleine = "${heroku_pipeline.id}"
  stage= "production"
}
