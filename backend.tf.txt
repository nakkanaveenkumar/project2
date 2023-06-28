terraform {
  backend "s3" {
    bucket = "hashtek-terraform-state-newbucket"
    region = "us-east-1"
    dynamodb_table = "hashtekTerraformStatelock"
  }
}