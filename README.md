# GitHub Actions for [Cirrus CI](https://github.com/marketplace/cirrus-ci) 

[![Build Status](https://api.cirrus-ci.com/github/cirruslabs/actions-trigger.svg)](https://cirrus-ci.com/github/cirruslabs/actions-trigger) [![](https://images.microbadger.com/badges/version/cirrusci/actions-trigger.svg)](https://microbadger.com/images/cirrusci/actions-trigger) [![](https://images.microbadger.com/badges/image/cirrusci/actions-trigger.svg)](https://microbadger.com/images/cirrusci/actions-trigger)

To use the action simply add the following lines to your `.github/main.workflow`:

```
action "Cirrus CI Passes" {
  uses = "docker://cirrusci/actions-trigger:latest"
}
```

This action will check that a Check Suite for a corresponding Cirrus CI build succeeded. See `.github/main.workflow` for a full demo workflow.

**Note:** Actions are **only working on private repositories** at the moment and only for members of [the private beta](https://github.com/features/actions/signup).

### Full `main.workflow` example

![image](https://user-images.githubusercontent.com/989066/47054401-73889380-d166-11e8-8dcb-d72cae4653ca.png)

`.github/main.workflow` content:

```
workflow "Cirrus CI Demo" {
  on = "check_suite"
  resolves = "Cirrus CI Passes"
}

action "Cirrus CI Passes" {
  uses = "docker://cirrusci/actions-trigger:latest"
}
```
