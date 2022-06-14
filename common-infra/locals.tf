locals {
  terraform_organization = "kidsloop-infrastructure"

  dep_tools = nonsensitive(data.tfe_outputs.cluster-infra-tools.values)

  # Infra tools EKS variables (for ArgoCD / Teleport)
  tools_cluster_endpoint                      = local.dep_tools.cluster_endpoint
  tools_kubeconfig_certificate_authority_data = local.dep_tools.kubeconfig_certificate_authority_data

  argocd_project_name = "${{ values.product_name }}"
  argocd_namespace    = "argocd"
  istio_namespace     = "istio-system"

  product_namespace = "${{ values.product_name }}"

  region              = "eu-west-2"
  project_environment = "apifactory"
  project_region      = "uk"
  service_owner       = "Infra"

  workspace_name          = "${{ values.product_name }}-apifactory-uk"
  env_repo                = "KL-Engineering/${{ values.product_name }}-gitops-env"
  domain                  = "apifactory.kidsloop.live"
  env_repo_default_branch = "main"
  working_directory       = "apifactory/uk/tools"
  workspace_description   = "w${{ values.product_name }} workspace"
}
