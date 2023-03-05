terraform {
  backend "s3" {
    bucket = "tf-backend-storage-file"
    key    = "terraform_backend/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "backend"
  }
}