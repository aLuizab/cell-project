module "eks" {
 source  = "terraform-aws-modules/eks/aws"
 version = "~> 20.31"

 cluster_name    = var.cluster_name
 cluster_version = "1.31"

 cluster_endpoint_public_access = true
 enable_cluster_creator_admin_permissions = true
 create_cni_ipv6_iam_policy = true
 iam_role_attach_cni_policy = true 

 eks_managed_node_groups = {
   default = {
     instance_types = ["t3.medium"]
     min_size       = 1
     max_size       = 3
     desired_size   = 2
   }
 }

 vpc_id     = var.vpc_id
 subnet_ids = var.subnet_ids

 tags = {
   Environment = "dev"
   Terraform   = "true"
 }
}