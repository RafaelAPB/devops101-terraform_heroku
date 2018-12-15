# Created by Rafael Belchior
# https://www.terraform.io/docs/providers/heroku/index.html

#To retrieve it, run: heroku authorizations:create 
variable "heroku_api_key" {
    default = "YOUR_API_KEY"
}

variable "email"	{
	default = "YOUR_EMAIL"
}

variable "git_url"	{
	default = "https://github.com/GCE-NEIIST/GCE-NEIIST-webapp"
}

#GCE a project that has this type of infrastructure: www.gce-neiist.org
variable "app_name_develop"	{
	default = "gce-unique-d"
}

variable "app_name_staging"	{
	default = "gce-unique-s"
}

variable "app_name_production"	{
	default = "gce-unique-p"
}

variable "pipeline_name"	{
	default = "app-pipeline"
}

variable "organization_name"	{
	default = "my-company"
}