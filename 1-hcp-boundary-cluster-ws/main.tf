resource "hcp_boundary_cluster" "example" {
  cluster_id = "boundary-cluster"
  username   = var.username
  password   = var.password
  tier       = var.tier
}