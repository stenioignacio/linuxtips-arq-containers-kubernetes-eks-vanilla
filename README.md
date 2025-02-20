<!-- BEGIN_TF_DOCS -->

## Requirements

| Name      | Version  |
| --------- | -------- |
| terraform | >= 0.13  |
| kubectl   | >= 1.7.0 |

## Providers

| Name    | Version |
| ------- | ------- |
| archive | 2.7.0   |
| aws     | 5.87.0  |
| helm    | 2.17.0  |
| kubectl | 1.19.0  |
| tls     | 4.0.6   |

## Modules

No modules.

## Resources

| Name                                                                                                                                                            | Type        |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_cloudwatch_event_rule.karpenter_instance_terminate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule)     | resource    |
| [aws_cloudwatch_event_rule.karpenter_rebalance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule)              | resource    |
| [aws_cloudwatch_event_rule.karpenter_scheduled_change](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule)       | resource    |
| [aws_cloudwatch_event_rule.karpenter_spot_termination](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule)       | resource    |
| [aws_cloudwatch_event_rule.karpenter_state_change](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule)           | resource    |
| [aws_cloudwatch_event_target.karpenter_instance_terminate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) | resource    |
| [aws_cloudwatch_event_target.karpenter_rebalance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target)          | resource    |
| [aws_cloudwatch_event_target.karpenter_scheduled_change](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target)   | resource    |
| [aws_cloudwatch_event_target.karpenter_spot_termination](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target)   | resource    |
| [aws_cloudwatch_event_target.karpenter_state_change](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target)       | resource    |
| [aws_eks_access_entry.fargate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_entry)                                    | resource    |
| [aws_eks_access_entry.nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_entry)                                      | resource    |
| [aws_eks_addon.cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon)                                                      | resource    |
| [aws_eks_addon.coredns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon)                                                  | resource    |
| [aws_eks_addon.kubeproxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon)                                                | resource    |
| [aws_eks_cluster.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster)                                                 | resource    |
| [aws_eks_fargate_profile.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_fargate_profile)                            | resource    |
| [aws_eks_fargate_profile.kube_system](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_fargate_profile)                          | resource    |
| [aws_iam_instance_profile.nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile)                              | resource    |
| [aws_iam_openid_connect_provider.eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider)                  | resource    |
| [aws_iam_policy.aws_lb_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)                                          | resource    |
| [aws_iam_policy.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)                                              | resource    |
| [aws_iam_policy_attachment.aws_lb_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment)                    | resource    |
| [aws_iam_policy_attachment.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment)                        | resource    |
| [aws_iam_role.aws_lb_controller](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                          | resource    |
| [aws_iam_role.coredns_fix](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                                | resource    |
| [aws_iam_role.eks_cluster_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                           | resource    |
| [aws_iam_role.eks_nodes_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                             | resource    |
| [aws_iam_role.fargate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                                    | resource    |
| [aws_iam_role.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                                  | resource    |
| [aws_iam_role_policy_attachment.cloudwatch](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)             | resource    |
| [aws_iam_role_policy_attachment.cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                    | resource    |
| [aws_iam_role_policy_attachment.coredns_fix](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)            | resource    |
| [aws_iam_role_policy_attachment.ecr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                    | resource    |
| [aws_iam_role_policy_attachment.eks_cluster_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)     | resource    |
| [aws_iam_role_policy_attachment.eks_service_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)     | resource    |
| [aws_iam_role_policy_attachment.fargate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                | resource    |
| [aws_iam_role_policy_attachment.nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                  | resource    |
| [aws_iam_role_policy_attachment.ssm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                    | resource    |
| [aws_kms_alias.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias)                                                     | resource    |
| [aws_kms_key.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key)                                                         | resource    |
| [aws_lambda_function.coredns_fix](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function)                                  | resource    |
| [aws_lb.ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb)                                                                | resource    |
| [aws_lb_listener.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener)                                                 | resource    |
| [aws_lb_target_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group)                                         | resource    |
| [aws_security_group.coredns_fix](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                                    | resource    |
| [aws_security_group_rule.coredns_tcp](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule)                          | resource    |
| [aws_security_group_rule.coredns_udp](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule)                          | resource    |
| [aws_security_group_rule.nodeports](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule)                            | resource    |
| [aws_sqs_queue.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue)                                                | resource    |
| [aws_sqs_queue_policy.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy)                                  | resource    |
| [helm_release.alb_ingress_controller](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release)                                     | resource    |
| [helm_release.karpenter](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release)                                                  | resource    |
| [helm_release.kube_state_metrics](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release)                                         | resource    |
| [helm_release.metrics_server](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release)                                             | resource    |
| [kubectl_manifest.ec2_node_class](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest)                                   | resource    |
| [kubectl_manifest.node](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest)                                             | resource    |
| [archive_file.coredns_archive](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file)                                         | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity)                                   | data source |
| [aws_eks_cluster_auth.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth)                                 | data source |
| [aws_iam_policy_document.aws_lb_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                     | data source |
| [aws_iam_policy_document.aws_lb_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                       | data source |
| [aws_iam_policy_document.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                           | data source |
| [aws_iam_policy_document.coredns_fix](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                       | data source |
| [aws_iam_policy_document.fargate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                           | data source |
| [aws_iam_policy_document.karpenter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                         | data source |
| [aws_iam_policy_document.karpenter_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                  | data source |
| [aws_iam_policy_document.nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                             | data source |
| [aws_lambda_invocation.coredns_fix](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/lambda_invocation)                           | data source |
| [aws_ssm_parameter.karpenter_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter)                                 | data source |
| [aws_ssm_parameter.pods_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter)                                  | data source |
| [aws_ssm_parameter.private_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter)                               | data source |
| [aws_ssm_parameter.public_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter)                                | data source |
| [aws_ssm_parameter.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter)                                           | data source |
| [tls_certificate.eks](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate)                                               | data source |

## Inputs

| Name                    | Description | Type                                                                                                                                                                                                                 | Default                                                                                                                                                                                                                                                                                                                                                                   | Required |
| ----------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------: |
| addon_cni_version       | n/a         | `string`                                                                                                                                                                                                             | `"v1.18.3-eksbuild.2"`                                                                                                                                                                                                                                                                                                                                                    |    no    |
| addon_coredns_version   | n/a         | `string`                                                                                                                                                                                                             | `"v1.11.4-eksbuild.1"`                                                                                                                                                                                                                                                                                                                                                    |    no    |
| addon_kubeproxy_version | n/a         | `string`                                                                                                                                                                                                             | `"v1.31.2-eksbuild.3"`                                                                                                                                                                                                                                                                                                                                                    |    no    |
| auto_scale_options      | n/a         | `object({ min = number max = number desired = number })`                                                                                                                                                             | n/a                                                                                                                                                                                                                                                                                                                                                                       |   yes    |
| k8s_version             | n/a         | `string`                                                                                                                                                                                                             | `"1.32"`                                                                                                                                                                                                                                                                                                                                                                  |    no    |
| karpenter_capacity      | n/a         | `list(object({ name = string workload = string ami_family = string ami_ssm = string instance_family = list(string) instance_sizes = list(string) capacity_type = list(string) availability_zones = list(string) }))` | `[ { "ami_family": "Bottlerocket", "ami_ssm": "/aws/service/bottlerocket/aws-k8s-1.31/x86_64/latest/image_id", "availability_zones": [ "us-east-1a", "us-east-1b", "us-east-1c" ], "capacity_type": [ "spot", "on-demand" ], "instance_family": [ "t3", "t3a" ], "instance_sizes": [ "micro", "small", "medium", "large" ], "name": "general", "workload": "general" } ]` |    no    |
| nodes_instances_sizes   | n/a         | `list(string)`                                                                                                                                                                                                       | `[ "t3a.micro", "t3a.small", "t3a.medium", "t3a.large", "t3a.xlarge" ]`                                                                                                                                                                                                                                                                                                   |    no    |
| project_name            | n/a         | `string`                                                                                                                                                                                                             | `"my-project"`                                                                                                                                                                                                                                                                                                                                                            |    no    |
| region                  | n/a         | `string`                                                                                                                                                                                                             | `"us-east-1"`                                                                                                                                                                                                                                                                                                                                                             |    no    |
| ssm_pod_subnets         | n/a         | `list(string)`                                                                                                                                                                                                       | n/a                                                                                                                                                                                                                                                                                                                                                                       |   yes    |
| ssm_private_subnets     | n/a         | `list(string)`                                                                                                                                                                                                       | n/a                                                                                                                                                                                                                                                                                                                                                                       |   yes    |
| ssm_public_subnets      | n/a         | `list(string)`                                                                                                                                                                                                       | n/a                                                                                                                                                                                                                                                                                                                                                                       |   yes    |
| ssm_vpc                 | n/a         | `any`                                                                                                                                                                                                                | n/a                                                                                                                                                                                                                                                                                                                                                                       |   yes    |

## Outputs

No outputs.

<!-- END_TF_DOCS -->
