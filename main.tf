module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "fast-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-0f0346201ab7af702"

  private_subnets = ["subnet-0abd956ae4e14d4ea", "subnet-09d94650eb924366a"]
  public_subnets  = ["subnet-0b21f6c28a4f3c11b", "subnet-0ae7b84ca917d0c12"]
}
