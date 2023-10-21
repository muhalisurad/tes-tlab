provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

provider "aws" {
  region = var.region
  access_key = AKIAWSXCQB2OXCEPAIGM
  secret_key = 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
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = "eks-tes"
}
