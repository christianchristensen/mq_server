name "base"
description "Base role applied to all nodes."
run_list(
#  "recipe[zsh]",
#  "recipe[users::sysadmins]",
#  "recipe[sudo]",
  "recipe[apt]"
)
override_attributes(
  :authorization => {
    :sudo => {
      :users => ["ubuntu"],
      :passwordless => true
    }
  }
)
