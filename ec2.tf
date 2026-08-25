provider "aws" {
  region = "eu-north-1"
}
resource "aws_s3_object" "index" {
  bucket = "manasi-patil-b73"
  key    = "index.html"
  source = "${path.root}/index.html"
}
