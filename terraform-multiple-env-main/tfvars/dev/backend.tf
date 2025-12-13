bucket = "82ss-tf-remote-state-dev" # you should have unique bucket names across all aws accounts
key    = "expense-backend-infra-dev" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
region = "us-east-1"
dynamodb_table = "82s-state-locking-dev"