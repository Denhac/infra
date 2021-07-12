provider "unifi" {
  username = var.username
  password = var.password
  api_url  = var.api_url
  allow_insecure = true
}

data "unifi_ap_group" "default" {
}

data "unifi_user_group" "default" {
}
