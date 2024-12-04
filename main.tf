resource "aws_s3_bucket" "bucket1" {
	bucket = "raam-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {
    
}

provider "aws" {
    region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "raam-s3bucket-0412"
    key            = "raam/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "raam-0412-dblocks"
    encrypt        = true
  }
}
