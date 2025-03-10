variable "project_name" {

}

variable "region" {

}

variable "k8s_version" {

}

variable "ssm_vpc" {

}

variable "addon_cni_version" {
  type    = string
  default = "v1.18.3-eksbuild.2"
}

variable "addon_coredns_version" {
  type    = string
  default = "v1.11.4-eksbuild.1"
}

variable "addon_kubeproxy_version" {
  type    = string
  default = "v1.31.2-eksbuild.3"
}

variable "addon_pod_identity_version" {
  type    = string
  default = "v1.3.4-eksbuild.1"
}

variable "addon_ebs_csi_version" {
  type    = string
  default = "v1.39.0-eksbuild.1"
}

variable "addon_efs_csi_version" {
  type    = string
  default = "v2.1.4-eksbuild.1"
}
variable "addon_s3_csi_version" {
  type    = string
  default = "v1.11.0-eksbuild.1"
}

variable "ssm_public_subnets" {
  type = list(string)
}

variable "ssm_private_subnets" {
  type = list(string)
}

variable "ssm_pod_subnets" {
  type = list(string)
}

variable "auto_scale_options" {
  type = object({
    min     = number
    max     = number
    desired = number
  })
}

variable "nodes_instances_sizes" {
  type = list(string)
}
