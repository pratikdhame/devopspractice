provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "state" {
  bucket        = "pratik-tf-state-bucket-unique"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "state" {
  bucket = aws_s3_bucket.state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "lock" {
  name         = "pratik-tf-lock-table-unique"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
