variable "project_name" {

}

variable "region" {
  default = "us-east-1"
}

variable "k8s_version" {
  default = "1.31"
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

variable "addon_efs_csi_version" {
  type    = string
  default = "v2.1.4-eksbuild.1"
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
    instance_family    = ["t3", "t3a","t2a","t2"]
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

#Grafana
variable "grafana_host" {
  type        = string
  default = "grafana.signacio.com.br"
  # default     = "linuxtips-kubernetes-cluster-ac0403775ad3b673.elb.us-east-1.amazonaws.com"
  description = "Host do Grafana"
}

#Istio

variable "istio_version" {
  type    = string
  description = "Istio version"
  default = "1.24.3"
}

variable "istio_max_replicas" {
  type    = number
  default = "20"
}

variable "istio_min_replicas" {
  type    = number
  default = "3"
}

variable "istio_cpu_treshold" {
  type    = number
  default = "80"
}

#Jaeger
variable "jaeger_host" {
  type = string
  default = "jeager.signacio.com.br"
}

#Kiali
variable "kiali_host" {
  type = string
  default = "kiali.signacio.com.br"
}

variable "kiali_version" {
  type = string
  default = "2.5"
}

#Keda
variable "keda_version" {
  type = string
  description = "Versao do Keda"
  default = "2.16.0"
}

#Argo Rollouts
variable "argo_rollouts_host" {
  type        = string
  default     = "rollouts.signacio.com.br"
  description = "Host do Argo Rollouts"
}
variable "argo_rollouts_version" {
  type        = string
  description = "Versao do Argo Rollouts"
  default     = "2.34.1"
  
}

#ArgoCD
variable "argocd_host" {
  type = string
  default = "argocd.signacio.com.br"
}

// Chaos Mesh 
variable "chaos_mesh_host" {
  type        = string
  default     = "chaos-mesh.msfidelis.com.br"
  description = "Host do Chaos Mesh"
}