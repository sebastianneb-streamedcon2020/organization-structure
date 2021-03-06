remote_state {
  backend = "gcs"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "sebastianneb-tfstate-a737"
    prefix = "${path_relative_to_include()}"
  }
}

inputs = {
  project_id                  = "sebastianneb-seed-060b"
  org_id                      = "341667633844"
  domain                      = "sebastianneb.de"
  billing_account             = "012A37-911A41-9E7FAA"
  github_owner                = "sebastianneb-streamedcon2020"
  github_template_repository  = "terraform-repository-template"
  github_token                = get_env("ADMIN_TOKEN_GITHUB")
}
