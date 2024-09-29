terraform {
  backend "s3" {
    bucket = "nn-udacity-sre-course1-tf"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = local.tags
  }
}
