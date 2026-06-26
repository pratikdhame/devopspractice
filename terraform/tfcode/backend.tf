terraform {
  backend "s3" {
    bucket         = "pratik-tf-state-bucket-unique"
    key            = "app/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "pratik-tf-lock-table-unique"
    encrypt        = true
  }
}
