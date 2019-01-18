workflow "Cirrus CI Demo" {
  on = "check_suite"
  resolves = "Cirrus CI Passes"
}

action "Cirrus CI Passes" {
  uses = "docker://cirrusactions/check-suite:latest"
  env = {
    APP_NAME = "Cirrus CI"
  }
}
