resource "tfe_workspace" "hcp-boundary-cluster-ws" {
  name         = "1-hcp-boundary-cluster-ws"
  organization = data.tfe_organization.hellocloud-tfc.name
  tag_names    = ["hcp-boundary-cluster", "app"]
  project_id   = data.tfe_project.boundary-multihop-project.id
  vcs_repo {
    branch             = "main"
    identifier         = "sailinnthu/boundary-multihop-project"
    oauth_token_id     = data.tfe_oauth_client.client.oauth_token_id
  }
  working_directory = "1-hcp-boundary-cluster-ws"
  trigger_patterns = []
  queue_all_runs = false
}

resource "tfe_workspace" "aws-boundary-infra-ws" {
  name         = "2-aws-boundary-infra-ws"
  organization = data.tfe_organization.hellocloud-tfc.name
  tag_names    = ["aws-boundary-infra", "app"]
  project_id   = data.tfe_project.boundary-multihop-project.id
  vcs_repo {
    branch             = "main"
    identifier         = "sailinnthu/boundary-multihop-project"
    oauth_token_id     = data.tfe_oauth_client.client.oauth_token_id
  }
  working_directory = "2-aws-boundary-infra-ws"
  trigger_patterns = []
  queue_all_runs = false
}

resource "tfe_workspace" "ingress-worker-ws" {
  name         = "3-ingress-worker-ws"
  organization = data.tfe_organization.hellocloud-tfc.name
  tag_names    = ["ingress-worker", "app"]
  project_id   = data.tfe_project.boundary-multihop-project.id
  vcs_repo {
    branch             = "main"
    identifier         = "sailinnthu/boundary-multihop-project"
    oauth_token_id     = data.tfe_oauth_client.client.oauth_token_id
  }
  working_directory = "3-ingress-worker-ws"
  trigger_patterns = []
  queue_all_runs = false
}

resource "tfe_workspace" "egress-worker-ws" {
  name         = "4-egress-worker-ws"
  organization = data.tfe_organization.hellocloud-tfc.name
  tag_names    = ["egress-worker", "app"]
  project_id   = data.tfe_project.boundary-multihop-project.id
  vcs_repo {
    branch             = "main"
    identifier         = "sailinnthu/boundary-multihop-project"
    oauth_token_id     = data.tfe_oauth_client.client.oauth_token_id
  }
  working_directory = "4-egress-worker-ws"
  trigger_patterns = []
  queue_all_runs = false
}