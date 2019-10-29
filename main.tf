terraform {
  backend "s3" {
    bucket = "omar-tf-state"
    key    = "circleci/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "omar-tf-state-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "test-bucket" {
  bucket = "omar-circleci-dev11"
}
