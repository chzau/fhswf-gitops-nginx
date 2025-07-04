module "remote_backend" {
  source              = "./backend"
  bucket_name         = "terraform-state-zaunig"
  dynamodb_table_name = "terraform-locks"

  tags = {
    Owner   = "Zaunig"
    Project = "GitOps Terraform"
  }
}