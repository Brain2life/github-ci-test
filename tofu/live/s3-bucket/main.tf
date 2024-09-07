provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "devops_tofu_state" {
  bucket = "makbanov-fundamentals-of-devops-tofu-state"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_server_side_encryption" {
   bucket = aws_s3_bucket.devops_tofu_state.id

   rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_s3_bucket.devops_tofu_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
