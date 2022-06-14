terraform {
  cloud {
    organization = "kidsloop-infrastructure"
    workspaces {
      name = "${{ values.product_name }}-apifactory-uk"
    }
  }
}
