# Full configuration options can be found at:
# https://www.vaultproject.io/docs/configuration

ui = true

log_level = "INFO"
#log_file = "/vault/logs/vault.log"

#mlock = true
#disable_mlock = true

storage "file" {
  path = "/var/packages/nomad/target/app/data"
}

#storage "consul" {
#  address = "127.0.0.1:8500"
#  path    = "vault"
#}

#storage "raft" {
#  path    = "/vault/data"
#  node_id = "4c4c4544-0036-5710-8035-cac04f474432"
#
#  retry_join {
#    leader_tls_servername   = "r2node12"
#    leader_api_addr         = "https://192.168.20.12:8200"
#    leader_ca_cert_file     = "/opt/vault/cert/ca.crt"
#    leader_client_cert_file = "/opt/vault/cert/server.crt"
#    leader_client_key_file  = "/opt/vault/cert/server.key"
#  }
#}

# HTTPS listener
listener "tcp" {
  address         = "0.0.0.0:8200"
  #tls_disable      = true
  tls_cert_file   = "/vault/cert/server.crt"
  tls_key_file    = "/vault/cert/server.key"
}
