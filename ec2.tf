resource "null_resource" "sync_website" {

  provisioner "local-exec" {
    command = "aws s3 sync . s3://manasi-patil-b73/ --exclude '*' --include 'index.html'"
  }
}
