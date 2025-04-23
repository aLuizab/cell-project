module "vpc_cell_b" {
  source               = "../modules/vpc"
  name                 = "cell-b"
  cidr_block           = "10.1.0.0/16"
  public_subnet_cidrs  = ["10.1.1.0/24", "10.1.2.0/24"]
  private_subnet_cidrs = ["10.1.101.0/24", "10.1.102.0/24"]
  azs                  = ["us-east-2a", "us-east-2b"]
}

module "eks_cell_a" {
  source                = "../modules/eks"
  cluster_name          = "eks-cell-b"
  cluster_version       = "1.29"
  vpc_id                = module.vpc_cell_b.vpc_id
  subnet_ids            = module.vpc_cell_b.private_subnet_ids
  node_desired_capacity = 2
  node_max_capacity     = 3
  node_min_capacity     = 1
  node_instance_type    = "t3.medium"
  cell_name             = "cell-b"
}