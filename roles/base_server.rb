name "base_server"
description "The role for any server system"
run_list "recipe[monit::default]", "recipe[monit::ssh]", "recipe[monit::postfix]", "recipe[logrotate]"
default_attributes(
)
