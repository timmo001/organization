workflow "Linting" {
  on = "push"
  resolves = [
    "yamllint",
  ]
}

action "yamllint" {
  uses = "docker://pipelinecomponents/yamllint:latest"
  runs = "yamllint ."
}
