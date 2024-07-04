terraform {
  backend "s3" {
    bucket = "log-terraform-cicd-primus-learning"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}