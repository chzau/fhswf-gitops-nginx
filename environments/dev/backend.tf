terraform {
  backend "s3" {
    bucket         = "terraform-state-zaunig"
    key            = "environments/dev/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
