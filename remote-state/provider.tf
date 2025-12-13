terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "82ss-tf-remote-state-prod"   # unique bucket name created in your AWS account
    key    = "expense-backend-infra-sai" # (works like a tag) you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "82s-state-locking-prod" # DynamoDB table for state locking, created in your AWS account (Table name -> ****, Partition key -> LockId)
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
