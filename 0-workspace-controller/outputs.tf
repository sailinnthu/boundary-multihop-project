output "Project-ID" {
  value = data.tfe_project.boundary-multihop-project.id
}

output "HCP-Boundary-WS" {
  value = tfe_workspace.hcp-boundary-cluster-ws.name
}

output "Ingress-Worker-WS" {
  value = tfe_workspace.ingress-worker-ws.name
}

output "Egress-Worker-WS" {
  value = tfe_workspace.egress-worker-ws.name
}