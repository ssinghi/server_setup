name "rails_webserver"
description "The role for systems that serves as rails server"
run_list "recipe[rails_webserver::default]", "recipe[apache2]"
default_attributes(
  "apache2" => {
    "listen_ports" => ["80"]
  }
)
