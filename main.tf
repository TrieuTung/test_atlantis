#resource "null_resource" "example" {}
resource "github_branch" "branch" {
  repository  = "test_atlantis"
  branch      = "atlantis"
}

resource "github_repository_file" "file" {
  repository           = github_branch.branch.repository
  branch               = github_branch.branch.branch
  file                 = "hello-world.txt"
  content              = "Hello World"
  overwrite_on_create  = true
}
