data "tfe_organization" "hellocloud-tfc" {
  name = "hellocloud-tfc"
}

data "tfe_project" "boundary-multihop-project" {
  name         = "boundary-multihop-project"
  organization = data.tfe_organization.hellocloud-tfc.name
}
