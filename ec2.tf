provider "aws" {
  region = "eu-north-1"
}
resource "aws_s3_object" "index" {
  bucket = "manasi-bucket"
  key    = "index.html"
  source = "/root/index.html"
}
