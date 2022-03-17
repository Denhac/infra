variable "proxmox_url" {
  type = string
}

variable "proxmox_node" {
  type = string
}

variable "proxmox_username" {
  type = string
}

variable "proxmox_token" {
  type = string
  sensitive = true
}

variable "denhac_password" {
  type = string
  sensitive = true
}

variable "denhac_password_enc" {
  type = string
  sensitive = true
}

variable "http_interface" {
  type = string
  default = "wlan0"
}
