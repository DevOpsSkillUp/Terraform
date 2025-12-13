bucket = "82ss-tf-remote-state-prod"
key    = "eexpense-backend-infra-prod" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
region = "us-east-1"
dynamodb_table = "82s-state-locking-prod"