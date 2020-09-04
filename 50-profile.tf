# profile

resource "aws_eks_fargate_profile" "default" {
  fargate_profile_name   = var.name

  cluster_name = var.cluster_name
  subnet_ids   = var.subnet_ids

  pod_execution_role_arn = aws_iam_role.default.arn

  tags = local.tags

  selector {
    namespace = var.kubernetes_namespace
    labels    = var.kubernetes_labels
  }
}
