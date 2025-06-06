module "vpc_cell_a" {
  source               = "../modules/vpc"
  name                 = "cell-a"
  cidr_block           = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24"]
  azs                  = ["us-east-2a", "us-east-2b"]
}

module "eks_cell_a" {
  source                = "../modules/eks"
  cluster_name          = "celula-A"
  vpc_id                = module.vpc_cell_a.vpc_id
  subnet_ids            = module.vpc_cell_a.private_subnet_ids
}
