name "mq_server"
description "Message Server (AMQP) setup."
run_list(
  "recipe[php]",
  "recipe[apache2]",
  "recipe[apache2::mod_expires]",
  "recipe[apache2::mod_php5]",
  "recipe[apache2::mod_rewrite]",
  "recipe[php::module_amqp]",
  "recipe[rabbitmq]"
)
