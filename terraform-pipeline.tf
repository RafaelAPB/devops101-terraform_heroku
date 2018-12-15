# Create a Heroku pipeline
resource "heroku_pipeline" "app-pipeline" {
  name = "${var.pipeline_name}"
}

# Couple apps to different pipeline stages
resource "heroku_pipeline_coupling" "develop" {
  app      = "${heroku_app.dev.name}"
  pipeline = "${heroku_pipeline.app-pipeline.id}"
  stage    = "development"
}

resource "heroku_pipeline_coupling" "staging" {
  app      = "${heroku_app.stag.name}"
  pipeline = "${heroku_pipeline.app-pipeline.id}"
  stage    = "staging"
}

resource "heroku_pipeline_coupling" "production" {
  app      = "${heroku_app.prod.name}"
  pipeline = "${heroku_pipeline.app-pipeline.id}"
  stage    = "production"
}