# Usar uma bastion para testes dentro o K8s

```sh
k run bastionpod --rm -i --tty --image debian -n default -- bash
```

# Payloads

## App:

Validar versao

```sh
curl -X POST http://chip.chip.svc.cluster.local:8080/version -i -d '{"path": "/data"}'
```

## EBS, EFS e s3:

Validar versao

```sh
curl -X POST http://chip.chip.svc.cluster.local:8080/filesystem/version -i -d '{"path": "/data"}'
```

Listar arquivos

```sh
curl -X POST http://chip.chip.svc.cluster.local:8080/filesystem/ls -i -d '{"path": "/data"}'
```

Escrever arquivos

```sh
curl -X POST http://chip.chip.svc.cluster.local:8080/filesystem/write -i -d '{"path": "/data/linuxtips", "content": "dHVuZ2Fz"}'
```

Rodar um 'cat'

```sh
curl -X POST http://chip.chip.svc.cluster.local:8080/filesystem/cat -i -d '{"path": "/data/linuxtips"}'
```

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name    | Version |
| ------- | ------- |
| kubectl | 1.19.0  |

## Providers

| Name    | Version |
| ------- | ------- |
| aws     | 5.87.0  |
| helm    | 2.17.0  |
| kubectl | 1.19.0  |
| tls     | 4.0.6   |

## Modules

No modules.

## Resources

| Name                                                                                                                                                        | Type        |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_efs_file_system.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system)                                     | resource    |
| [aws_efs_mount_target.efs_mount_pods](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target)                         | resource    |
| [aws_eks_access_entry.nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_access_entry)                                  | resource    |
| [aws_eks_addon.cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon)                                                  | resource    |
| [aws_eks_addon.codedns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon)                                              | resource    |
| [aws_eks_addon.ebs_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon)                                              | resource    |
| [aws_eks_addon.efs_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon)                                              | resource    |
| [aws_eks_addon.kubeproxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon)                                            | resource    |
| [aws_eks_addon.pod_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon)                                         | resource    |
| [aws_eks_addon.s3_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon)                                               | resource    |
| [aws_eks_cluster.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster)                                             | resource    |
| [aws_eks_node_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group)                                       | resource    |
| [aws_eks_pod_identity_association.ebs_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_pod_identity_association)        | resource    |
| [aws_eks_pod_identity_association.efs_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_pod_identity_association)        | resource    |
| [aws_eks_pod_identity_association.s3_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_pod_identity_association)         | resource    |
| [aws_iam_instance_profile.nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile)                          | resource    |
| [aws_iam_openid_connect_provider.eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider)              | resource    |
| [aws_iam_role.ebs_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                               | resource    |
| [aws_iam_role.efs_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                               | resource    |
| [aws_iam_role.eks_cluster_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                       | resource    |
| [aws_iam_role.eks_nodes_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                         | resource    |
| [aws_iam_role.s3_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                                | resource    |
| [aws_iam_role_policy_attachment.cloudwatch](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)         | resource    |
| [aws_iam_role_policy_attachment.cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                | resource    |
| [aws_iam_role_policy_attachment.ebs_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)            | resource    |
| [aws_iam_role_policy_attachment.ebs_csi_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)       | resource    |
| [aws_iam_role_policy_attachment.ecr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                | resource    |
| [aws_iam_role_policy_attachment.efs_csi_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)       | resource    |
| [aws_iam_role_policy_attachment.eks_cluster_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource    |
| [aws_iam_role_policy_attachment.eks_service_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource    |
| [aws_iam_role_policy_attachment.nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)              | resource    |
| [aws_iam_role_policy_attachment.s3_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)             | resource    |
| [aws_iam_role_policy_attachment.s3_csi_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)        | resource    |
| [aws_iam_role_policy_attachment.ssm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                | resource    |
| [aws_kms_alias.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias)                                                 | resource    |
| [aws_kms_key.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key)                                                     | resource    |
| [aws_s3_bucket.chip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)                                                 | resource    |
| [aws_s3_bucket_acl.chip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl)                                         | resource    |
| [aws_s3_bucket_ownership_controls.chip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls)           | resource    |
| [aws_s3_bucket_public_access_block.chip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block)         | resource    |
| [aws_security_group.efs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                                        | resource    |
| [aws_security_group_rule.coredns_tcp](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule)                      | resource    |
| [aws_security_group_rule.coredns_udp](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule)                      | resource    |
| [aws_security_group_rule.nodeports](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule)                        | resource    |
| [helm_release.kube_state_metrics](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release)                                     | resource    |
| [helm_release.metrics_server](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release)                                         | resource    |
| [kubectl_manifest.gp3](https://registry.terraform.io/providers/gavinbunney/kubectl/1.19.0/docs/resources/manifest)                                          | resource    |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity)                               | data source |
| [aws_eks_cluster_auth.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth)                             | data source |
| [aws_iam_policy_document.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                       | data source |
| [aws_iam_policy_document.ebs_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                      | data source |
| [aws_iam_policy_document.efs_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                      | data source |
| [aws_iam_policy_document.nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                         | data source |
| [aws_iam_policy_document.s3_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                       | data source |
| [aws_ssm_parameter.pods_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter)                              | data source |
| [aws_ssm_parameter.private_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter)                           | data source |
| [aws_ssm_parameter.public_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter)                            | data source |
| [aws_ssm_parameter.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter)                                       | data source |
| [tls_certificate.eks](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate)                                           | data source |

## Inputs

| Name                       | Description | Type                                                     | Default                | Required |
| -------------------------- | ----------- | -------------------------------------------------------- | ---------------------- | :------: |
| addon_cni_version          | n/a         | `string`                                                 | `"v1.18.3-eksbuild.2"` |    no    |
| addon_coredns_version      | n/a         | `string`                                                 | `"v1.11.4-eksbuild.1"` |    no    |
| addon_ebs_csi_version      | n/a         | `string`                                                 | `"v1.39.0-eksbuild.1"` |    no    |
| addon_efs_csi_version      | n/a         | `string`                                                 | `"v2.1.4-eksbuild.1"`  |    no    |
| addon_kubeproxy_version    | n/a         | `string`                                                 | `"v1.31.2-eksbuild.3"` |    no    |
| addon_pod_identity_version | n/a         | `string`                                                 | `"v1.3.4-eksbuild.1"`  |    no    |
| addon_s3_csi_version       | n/a         | `string`                                                 | `"v1.11.0-eksbuild.1"` |    no    |
| auto_scale_options         | n/a         | `object({ min = number max = number desired = number })` | n/a                    |   yes    |
| k8s_version                | n/a         | `any`                                                    | n/a                    |   yes    |
| nodes_instances_sizes      | n/a         | `list(string)`                                           | n/a                    |   yes    |
| project_name               | n/a         | `any`                                                    | n/a                    |   yes    |
| region                     | n/a         | `any`                                                    | n/a                    |   yes    |
| ssm_pod_subnets            | n/a         | `list(string)`                                           | n/a                    |   yes    |
| ssm_private_subnets        | n/a         | `list(string)`                                           | n/a                    |   yes    |
| ssm_public_subnets         | n/a         | `list(string)`                                           | n/a                    |   yes    |
| ssm_vpc                    | n/a         | `any`                                                    | n/a                    |   yes    |

## Outputs

No outputs.

<!-- END_TF_DOCS -->
