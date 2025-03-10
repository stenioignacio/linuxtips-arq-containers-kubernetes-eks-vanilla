variable "project_name" {

}

variable "region" {
  default = "us-east-1"
}

variable "k8s_version" {
  default = "1.32"
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
  default = {
    min     = 1
    max     = 10
    desired = 2
  }
}

variable "nodes_instances_sizes" {
  type = list(string)
  default = [
    "t3a.micro",
    "t3a.small",
    "t3a.medium",
    "t3a.large",
    "t3a.xlarge"
  ]
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
  default = [{
    name               = "general"
    workload           = "general"
    ami_family         = "Bottlerocket"
    ami_ssm            = "/aws/service/bottlerocket/aws-k8s-1.31/x86_64/latest/image_id"
    instance_family    = ["t3", "t3a"]
    instance_sizes     = ["micro", "small", "medium", "large"]
    capacity_type      = ["spot", "on-demand"]
    availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  }]
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


# Nginx

variable "nginx_min_replicas" {
  type    = string
  default = "3"
}

variable "nginx_max_replicas" {
  type    = string
  default = "10"
}

variable "nginx_requests_cpu" {
  type    = string
  default = "200m"
}

variable "nginx_max_utilization_cpu_percentage" {
  type    = string
  default = "80"
}

variable "nginx_requests_memory" {
  type    = string
  default = "512Mi"
}

variable "nginx_limits_cpu" {
  type    = string
  default = "500m"
}

variable "nginx_limits_memory" {
  type    = string
  default = "1024Mi"

}
