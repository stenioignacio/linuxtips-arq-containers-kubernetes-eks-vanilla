# resource "aws_launch_template" "custom" {
#   name = var.project_name

#   block_device_mappings {
#     device_name = "/dev/xvda"

#     ebs {
#       volume_size = 20
#       volume_type = "gp3"
#     }
#   }

#   ebs_optimized = true
#   monitoring {
#     enabled = true
#   }

#   tag_specifications {
#     resource_type = "instance"

#     tags = {
#       Name = format("%s-custom", var.project_name)
#     }
#   }

#   user_data = base64encode(templatefile("${path.module}/files/user-data/user-data.tpl", {
#     CLUSTER_NAME                     = aws_eks_cluster.main.name
#     KUBERNETES_ENDPOINT              = aws_eks_cluster.main.endpoint
#     KUBERNETES_CERTIFICATE_AUTHORITY = aws_eks_cluster.main.certificate_authority.0.data
#   }))
# }

# resource "aws_eks_node_group" "custom" {
#   cluster_name    = aws_eks_cluster.main.id
#   node_group_name = format("custom-%s", aws_eks_cluster.main.id)
#   node_role_arn   = aws_iam_role.eks_nodes_role.arn
#   instance_types  = var.nodes_instances_sizes
#   subnet_ids      = data.aws_ssm_parameter.pods_subnets[*].value

#   launch_template {
#     id      = aws_launch_template.custom.id
#     version = aws_launch_template.custom.latest_version
#   }

#   scaling_config {
#     desired_size = lookup(var.auto_scale_options, "desired")
#     min_size     = lookup(var.auto_scale_options, "min")
#     max_size     = lookup(var.auto_scale_options, "max")
#   }

#   capacity_type = "ON_DEMAND"

#   labels = {
#     "capacity/os"   = "AMAZON_LINUX"
#     "capacity/type" = "ON_DEMAND"
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
