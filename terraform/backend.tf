terraform {
  backend "s3" {
    bucket = "terraform-tfstate-symfony"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}