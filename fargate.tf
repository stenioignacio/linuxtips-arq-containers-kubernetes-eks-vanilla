resource "aws_eks_fargate_profile" "wildcard" {
  cluster_name         = aws_eks_cluster.main.name
  fargate_profile_name = "wildcard"

  pod_execution_role_arn = aws_iam_role.fargate.arn

  subnet_ids = data.aws_ssm_parameter.pods_subnets[*].value

  selector {
    namespace = "*"
  }
}
