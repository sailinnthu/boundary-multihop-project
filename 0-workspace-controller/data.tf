data "tfe_organization" "hellocloud-tfc" {
  name = "hellocloud-tfc"
}

data "tfe_project" "boundary-multihop-project" {
  name         = "boundary-multihop-project"
  organization = data.tfe_organization.hellocloud-tfc.name
}

data "tfe_oauth_client" "client" {
  oauth_client_id = "oc-z5p1GXKKfTPA8X2J"
}