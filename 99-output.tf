# output

output "id" {
  value = join("", aws_eks_fargate_profile.default.*.id)
}

output "arn" {
  value = join("", aws_eks_fargate_profile.default.*.arn)
}

output "status" {
  value = join("", aws_eks_fargate_profile.default.*.status)
}

output "role_arn" {
  value = join("", aws_iam_role.default.*.arn)
}

output "role_name" {
  value = join("", aws_iam_role.default.*.name)
}
