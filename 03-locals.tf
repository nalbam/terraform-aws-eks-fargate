# locals

locals {
  account_id = data.aws_caller_identity.current.account_id
}

locals {
  tags = merge(
    var.tags,
    {
      "kubernetes.io/cluster/${var.cluster_name}" = "owned"
    }
  )
}
