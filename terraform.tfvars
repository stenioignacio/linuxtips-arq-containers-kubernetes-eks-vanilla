project_name = "linuxtips-kubernetes-cluster"
region       = "us-east-1"

k8s_version = "1.31"

ssm_vpc = "/linuxtips-kubernetes-vpc/vpc/id"
ssm_public_subnets = [
  "/linuxtips-kubernetes-vpc/subnets/public/us-east-1a/linuxtips-public-1a",
  "/linuxtips-kubernetes-vpc/subnets/public/us-east-1b/linuxtips-public-1b",
  "/linuxtips-kubernetes-vpc/subnets/public/us-east-1c/linuxtips-public-1c"
]
ssm_private_subnets = [
  "/linuxtips-kubernetes-vpc/subnets/private/us-east-1a/linuxtips-private-1a",
  "/linuxtips-kubernetes-vpc/subnets/private/us-east-1b/linuxtips-private-1b",
  "/linuxtips-kubernetes-vpc/subnets/private/us-east-1c/linuxtips-private-1c"
]
ssm_pod_subnets = [
  "/linuxtips-kubernetes-vpc/subnets/private/us-east-1a/linuxtips-pods-1a",
  "/linuxtips-kubernetes-vpc/subnets/private/us-east-1b/linuxtips-pods-1b",
  "/linuxtips-kubernetes-vpc/subnets/private/us-east-1c/linuxtips-pods-1c"
]

auto_scale_options = {
  min     = 1
  max     = 10
  desired = 2
}

nodes_instances_sizes = [
  "t3.medium",
  "t3.large",
  "t3.xlarge"
]
