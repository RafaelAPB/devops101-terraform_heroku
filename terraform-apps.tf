###### Created by Rafael Belchior

######
###### Declaration of the instances ######
######

resource "heroku_app" "dev" {
  name   = "${var.app_name_develop}"
  region = "eu"
  
  #Default stack is Heroku-18(Ubuntu 18.04). Supported up to April 2023
  #https://devcenter.heroku.com/articles/stack
  
  buildpacks = [
    "heroku/nodejs",
  ]

  #You can provision your machine here
  #https://www.terraform.io/docs/provisioners/
  provisioner "local-exec" {
    command = "echo hello"
  }
}

resource "heroku_app" "stag" {
  name   = "${var.app_name_staging}"
  region = "eu"
  
  #Default stack is Heroku-18(Ubuntu 18.04). Supported up to April 2023
  #https://devcenter.heroku.com/articles/stack
  
  buildpacks = [
    "heroku/nodejs",
  ]

  #You can provision your machine here
  #https://www.terraform.io/docs/provisioners/
  provisioner "local-exec" {
    command = "echo hello"
  }
}

resource "heroku_app" "prod" {
  name   = "${var.app_name_production}"
  region = "eu"
  
  #Default stack is Heroku-18(Ubuntu 18.04). Supported up to April 2023
  #https://devcenter.heroku.com/articles/stack
  
  buildpacks = [
    "heroku/nodejs",
  ]

  #You can provision your machine here
  #https://www.terraform.io/docs/provisioners/
  provisioner "local-exec" {
    command = "echo hello"
  }
}

######
###### Declaration of the addons coupled with each instance
######

resource "heroku_addon" "papertrail" {
  app = "${heroku_app.dev.name}"
  plan = "papertrail"
}

resource "heroku_addon" "mongolab" {
  app = "${heroku_app.dev.name}"
  plan = "mongolab"
}

######
###### Declaration of the outputs
######

output "url-d" {
  value = "${heroku_app.dev.web_url}"
}

output "git_url-d" {
  value = "${heroku_app.dev.git_url}"
}

output "url-s" {
  value = "${heroku_app.stag.web_url}"
}

output "git_url-s" {
  value = "${heroku_app.stag.git_url}"
}

output "url-p" {
  value = "${heroku_app.prod.web_url}"
}

output "git_url-p" {
  value = "${heroku_app.prod.git_url}"
}