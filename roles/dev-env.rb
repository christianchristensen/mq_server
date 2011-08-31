name "dev-env"
description "Dev env setup..."
run_list(
  "recipe[git]",
  "recipe[dev-env-helper]"
)
