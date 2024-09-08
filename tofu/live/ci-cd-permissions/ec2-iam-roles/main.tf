provider "aws" {
  region = "us-east-1"
}

module "oidc_provider" {
  source = "github.com/brikis98/devops-book//ch5/tofu/modules/github-aws-oidc"

  provider_url = "https://token.actions.githubusercontent.com" 

}

module "iam_roles" {
  source = "github.com/Brain2life/gh-actions-tofu-ec2-module//tofu/modules/gh-actions-ec2-iam-roles"

  name              = "ec2-sample"                           
  oidc_provider_arn = module.oidc_provider.oidc_provider_arn    

  # TODO: fill in your own repo name here!
  github_repo      = "Brain2life/github-ci-test" 
  ec2_base_name = "ec2-sample"                            

  enable_iam_role_for_ec2_plan  = true                                
  # enable_iam_role_for_apply = true                                

}