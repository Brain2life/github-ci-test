output "ec2_deploy_plan_role_arn" {
  value = module.iam_roles.ec2_deploy_plan_role_arn
}

output "ec2_deploy_apply_role_arn" {
  value = module.iam_roles.ec2_deploy_apply_role_arn
}
