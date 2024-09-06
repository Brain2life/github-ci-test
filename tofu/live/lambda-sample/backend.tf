terraform {
  backend "s3" {
    # TODO: fill in your own bucket name here!
    bucket         = "makbanov-fundamentals-of-devops-tofu-state" 
    key            = "tofu/live/lambda-sample"       
    region         = "us-east-1"
    encrypt        = true
    # TODO: fill in your own DynamoDB table name here!
    dynamodb_table = "makbanov-fundamentals-of-devops-tofu-state" 
  }
}