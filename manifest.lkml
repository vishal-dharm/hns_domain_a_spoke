project_name: "hns_domain_a_spoke"

remote_dependency: hns_domain_a_hub {
  url: "git@github.com:vishal-dharm/hns_domain_a_hub.git"
  # reference either a Git branch, a Git release tag, or the SHA of a commit in the Git repository
  ref: "master"
  override_constant: CONNECTION_NAME {
    value: "bq-lookerplus"
  }
}
