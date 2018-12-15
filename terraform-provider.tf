# Configure the Heroku provider
# Change vars in terraform-vars.tf


#This configuration creates: 
#A pipeline (terraform-pipeline)
#Three nodejs servers, with two add-ons (terraform-app)
provider "heroku" {
  email   = "${var.email}"
  api_key = "${var.heroku_api_key}"
}

