provider "aws" {
  region = "us-east-1"
}

module "state" {
  source = "github.com/brikis98/devops-book//ch5/tofu/modules/state-bucket"

  # TODO: fill in your own bucket name!
  name = "makbanov-fundamentals-of-devops-tofu-state"
}