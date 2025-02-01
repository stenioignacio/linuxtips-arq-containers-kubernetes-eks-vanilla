# resource "aws_eks_node_group" "bottlerocket_spot" {
#   cluster_name    = aws_eks_cluster.main.id
#   node_group_name = format("bottlerocket-spot-%s", aws_eks_cluster.main.id)
#   node_role_arn   = aws_iam_role.eks_nodes_role.arn
#   instance_types  = var.nodes_instances_sizes
#   subnet_ids      = data.aws_ssm_parameter.pods_subnets[*].value

#   scaling_config {
#     desired_size = lookup(var.auto_scale_options, "desired")
#     min_size     = lookup(var.auto_scale_options, "min")
#     max_size     = lookup(var.auto_scale_options, "max")
#   }

#   capacity_type = "SPOT"

#   ami_type = "BOTTLEROCKET_x86_64"

#   labels = {
#     "capacity/os"   = "AMAZON_LINUX"
#     "capacity/type" = "SPOT"
#     "capacity/arch" = "X86_64"
#   }

#   lifecycle {
#     ignore_changes = [
#       scaling_config[0].desired_size
#     ]
#   }

#   timeouts {
#     create = "60m"
#     update = "2h"
#     delete = "2h"
#   }

#   tags = {
#     format("kubernetes.io/cluster/%s", var.project_name) = "owned"
#   }

#   depends_on = [aws_eks_access_entry.nodes]
# }
