datacenter = "default"
data_dir = "/var/packages/consul/target/app/data"

server = true
bootstrap_expect = 1

ui_config {
  enabled = true
}

performance {
  raft_multiplier = 1
}

client_addr = "{{ GetPrivateIP }} 127.0.0.1"
bind_addr = "{{ GetPrivateIP }}"

ports {
  server = 8300
  serf_lan = 8301
  serf_wan = 8302
  http = 8500
  https = 8501
  grpc = 8502
  dns = 8600
}

retry_join = [
  "{{ GetPrivateIP }}:8301"
]

log_level = "INFO"
# log_file = "/var/log/consul/"
# log_json = true
# log_rotate_max_files = 5
# enable_syslog = false

enable_local_script_checks = true
