name "wordpress_webserver"
description "The role for systems that serves as wordpress server"
run_list "recipe[memcached::default]", "recipe[apache2]", "recipe[apache2::mod_php5]", "recipe[apache2::mod_expires]"
default_attributes(
  "apache2" => {
    "listen_ports" => ["80"],
    "contact" => "ssinghi@kreeti.com",                 
  }
)
