name "memcached_server"
description "The role for systems that serves as memcached server"
run_list "recipe[memcached::default]"
default_attributes "memcached" => { "memory" => "128", "listen" => "127.0.0.1" }
