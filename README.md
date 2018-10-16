# GitHub Actions for Cirrus CI [![Build Status](https://api.cirrus-ci.com/github/cirruslabs/actions.svg)](https://cirrus-ci.com/github/cirruslabs/actions)

To use the action simply add the following lines to your `.github/main.workflow`:

```
action "Cirrus CI Passes" {
  uses = "docker://cirrusci/actions:latest"
}
```

This action will check that a Check Suite for a corresponding Cirrus CI build succeeded. See `.github/main.workflow` for a full demo workflow.

**Note:** Actions are **only working on private repositories** at the moment and only for members of [the private beta](https://github.com/features/actions/signup).
