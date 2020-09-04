# variable

variable "region" {
  description = "The region to deploy the cluster in, e.g: us-east-1"
}

variable "name" {
  description = "Name of the EKS fargate profile, e.g: dev-demo-eks"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "subnet_ids" {
  description = "Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: kubernetes.io/cluster/CLUSTER_NAME (where CLUSTER_NAME is replaced with the name of the EKS Cluster)"
  type        = list(string)
}

variable "kubernetes_namespace" {
  description = "Kubernetes namespace for selection"
}

variable "kubernetes_labels" {
  description = "Key-value mapping of Kubernetes labels for selection"
  type        = map(string)
  default     = {}
}

variable "tags" {
  type    = map(string)
  default = {}
}
