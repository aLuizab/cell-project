module "vpc_cell_b" {
  source               = "../modules/vpc"
  name                 = "cell-b"
  cidr_block           = "10.1.0.0/16"
  public_subnet_cidrs  = ["10.1.1.0/24", "10.1.2.0/24"]
  private_subnet_cidrs = ["10.1.101.0/24", "10.1.102.0/24"]
  azs                  = ["us-east-2a", "us-east-2b", "us-east-1a", "us-east-1b"]
}
