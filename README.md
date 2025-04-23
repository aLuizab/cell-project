# 🧬 Arquitetura Celular com EKS na AWS (Terraform)

Este projeto implementa uma arquitetura celular utilizando **Amazon EKS**, com **infraestrutura modular gerenciada via Terraform**, aplicada em **células A e B** independentes. Cada célula possui seu próprio cluster Kubernetes, redes, subnets e recursos dedicados, promovendo **resiliência, escalabilidade e isolamento de falhas**.

---

## 🧱 Estrutura do Projeto

```bash
.
├── cell-a/                     # Instância da célula A (infra + EKS)
├── cell-b/                     # Instância da célula B (infra + EKS)
├── modules/
│   └── vpc/                    # Módulo de rede (VPC + subnets)
│   └── eks/                    # Módulo de cluster EKS gerenciado
└── .github/workflows/         # Pipeline de deploy via GitHub Actions
