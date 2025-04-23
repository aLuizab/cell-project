variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
}

variable "cluster_version" {
  description = "Versão do Kubernetes"
  type        = string
  default     = "1.29"
}

variable "vpc_id" {
  description = "ID da VPC onde o cluster será criado"
  type        = string
}

variable "subnet_ids" {
  description = "Lista de subnets privadas"
  type        = list(string)
}

variable "node_desired_capacity" {
  description = "Capacidade desejada dos nós"
  type        = number
  default     = 2
}

variable "node_max_capacity" {
  description = "Capacidade máxima dos nós"
  type        = number
  default     = 3
}

variable "node_min_capacity" {
  description = "Capacidade mínima dos nós"
  type        = number
  default     = 1
}

variable "node_instance_type" {
  type        = string
  default     = "t3.medium"
  description = "Tipo da instância EC2 dos nós gerenciados"
}

variable "cell_name" {
  description = "Nome da célula (A, B, etc)"
  type        = string
}

variable "kms_key_arn" {
  type        = string
  description = "ARN da chave KMS já existente para usar no EKS"
}