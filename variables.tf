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

variable "karpenter_capacity" {
  type = list(object({
    name               = string
    workload           = string
    ami_family         = string
    ami_ssm            = string
    instance_family    = list(string)
    instance_sizes     = list(string)
    capacity_type      = list(string)
    availability_zones = list(string)
  }))
}
# HTTPS

# variable "domain" {
#   type    = string
#   default = "*.seudomain.com.br"
# }

# variable "route53_hosted_zone" {
#   type    = string
#   default = "sua_hosted_zone_id"
# }
