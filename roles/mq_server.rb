name "mq_server"
description "Message Server (AMQP) setup."
run_list(
  "recipe[php]",
#  "recipe[php::module_amqp]",
  "recipe[rabbitmq]"
)
