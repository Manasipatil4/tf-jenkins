resource "null_resource" "sync_website" {

  provisioner "local-exec" {
    command = <<-EOT
      echo "Terraform working directory:"
      pwd

      echo "Files in Jenkins workspace:"
      ls -la

      echo "Syncing index.html to S3:"
      aws s3 sync . s3://manasi-patil-b73/ --exclude "*" --include "index.html"

      echo "S3 bucket contents:"
      aws s3 ls s3://manasi-patil-b73/
    EOT
  }
}
