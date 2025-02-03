resource "aws_eks_addon" "cni" {
  cluster_name                = aws_eks_cluster.main.id
  addon_name                  = "vpc-cni"
  addon_version               = var.addon_cni_version
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
}
resource "aws_eks_addon" "codedns" {
  cluster_name                = aws_eks_cluster.main.id
  addon_name                  = "coredns"
  addon_version               = var.addon_coredns_version
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
}
resource "aws_eks_addon" "kubeproxy" {
  cluster_name                = aws_eks_cluster.main.id
  addon_name                  = "kube-proxy"
  addon_version               = var.addon_kubeproxy_version
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "OVERWRITE"
}

