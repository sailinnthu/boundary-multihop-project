resource "tfe_workspace" "hcp-boundary-cluster-ws" {
  name         = "1-hcp-boundary-cluster-ws"
  organization = data.tfe_organization.hellocloud-tfc.name
  tag_names    = ["hcp-boundary-cluster", "app"]
  project_id   = data.tfe_project.default-project.id
}

resource "tfe_workspace" "ingress-worker-ws" {
  name         = "2-ingress-worker-ws"
  organization = data.tfe_organization.hellocloud-tfc.name
  tag_names    = ["ingress-worker", "app"]
  project_id   = data.tfe_project.default-project.id
}

resource "tfe_workspace" "egress-worker-ws" {
  name         = "3-egress-worker-ws"
  organization = data.tfe_organization.hellocloud-tfc.name
  tag_names    = ["egress-worker", "app"]
  project_id   = data.tfe_project.default-project.id
}