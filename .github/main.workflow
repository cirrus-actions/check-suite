workflow "Cirrus CI Demo" {
  on = "check_suite"
  resolves = "Cirrus CI Passes"
}

action "Cirrus CI Passes" {
  uses = "docker://cirrusci/actions-trigger:latest"
}
