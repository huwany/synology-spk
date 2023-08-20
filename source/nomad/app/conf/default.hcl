region = "cn"
datacenter = "default"
data_dir = "/var/packages/nomad/target/app/data"

server {
  enabled = true
  bootstrap_expect = 1
}

ui {
  enabled = true
  consul {
    ui_url = "http://127.0.0.1:8500/ui"
  }
}

client {
  enabled = true
  meta = {
    groups = "consul,devops,nomad"
  }
}

bind_addr = "0.0.0.0"

ports {
  http = 4646
  rpc  = 4647
  serf = 4648
}

// advertise {
//   http = "192.168.20.12"
//   rpc  = "192.168.20.12"
//   serf = "192.168.20.12"
// }

acl {
  enabled = false
  token_ttl = "30s"
  policy_ttl = "30s"
}

plugin "docker" {
  config {
    allow_privileged = false
    gc {
      image       = false
      container   = true
    }
    volumes {
      enabled = true
    }
  }
}

plugin "raw_exec" {
  config {
    enabled = false
  }
}

consul {
  address = "127.0.0.1:8500"

  # The service name to register the server and client with Consul.
  server_service_name = "nomad-server"
  client_service_name = "nomad-client"

  # Enables automatically registering the services.
  auto_advertise = true

  # Enabling the server and client to bootstrap using Consul.
  server_auto_join = true
  client_auto_join = true
}

telemetry {
  collection_interval = "1s"
  disable_hostname = true
  prometheus_metrics = true
  publish_allocation_metrics = true
  publish_node_metrics = true
}

log_level = "INFO"
// log_file = "/var/log/nomad/nomad.log"
// log_json = true
// log_rotate_max_files = 5
// enable_syslog = false

disable_update_check = true
