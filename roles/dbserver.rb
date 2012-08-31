name "dbserver"
description "The role for systems that serves as mysql db server"
run_list "recipe[mysql::server]"
default_attributes(
)
