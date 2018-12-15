#### Use this only if you already have an organization on Heroku

#  Create a new Heroku space
# resource "heroku_space" "default" {
  # name = "test-space"
  # organization = "${var.organization_name}"
  # region = "eu"
# }

# Create a new Heroku app in test-space
# resource "heroku_app" "default" {
  # name = "test-app"
  # space = "${heroku_space.default.name}"
  # region = "eu"
  # organization = {
#    name = "${var.organization_name}"
#  }
#}