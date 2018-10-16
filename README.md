# GitHub Actions for Cirrus CI [![Build Status](https://api.cirrus-ci.com/github/cirruslabs/actions.svg)](https://cirrus-ci.com/github/cirruslabs/actions)

To use the action simply add the following lines to your `.github/main.workflow`:

```
action "Cirrus CI Passes" {
  uses = "docker://cirrusci/actions:latest"
}
```

This will check that a Check Suite for a corresponding Cirrus CI build passed.
