# fhswf-gitops-nginx

Dieses Repository enthält eine modulare, versionierte Infrastruktur für AWS, die mithilfe von [Terraform](https://www.terraform.io/) bereitgestellt wird. Ziel des Projekts ist es, eine mehrfach wiederholbare Infrastruktur aufzubauen, die in separaten Landscapes (dev, staging, prod) ausgeführt werden kann.

## 🔧 Projektüberblick

- **Tooling**: Terraform, Git, AWS CLI
- **Zielsystem**: EC2-Instanz mit NGINX-Webserver (Ubuntu)
- **Struktur**:
  - Wiederverwendbares Modul für EC2 + Security Group
  - Drei isolierte Umgebungen: `dev`, `staging`, `prod`
  - Zentrales Remote Backend (S3 + DynamoDB)

## 📁 Verzeichnisstruktur

```bash
fhswf-gitops-nginx/
│
├── infrastructure/        # S3 & DynamoDB Backend via Terraform
├── modules/nginx/         # Wiederverwendbares EC2-Modul
├── environments/
│   ├── dev/
│   ├── staging/
│   └── prod/
└── README.md
