provider "aws" {
  region = "eu-north-1"
}

resource "null_resource" "sync_website" {

  provisioner "local-exec" {
    command = "aws s3 sync /root/ s3://manasi-patil-b73/"
  }
}
