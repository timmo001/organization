workflow "Linting" {
  on = "push"
  resolves = [
    "yamllint",
    "markdownlint"
  ]
}

action "yamllint" {
  uses = "docker://pipelinecomponents/yamllint:latest"
  runs = "yamllint ."
}

action "markdownlint" {
  uses = "docker://pipelinecomponents/markdownlint:latest"
  runs = "mdl --style mdl_style.rb --warnings ."
}
