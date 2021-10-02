resource "unifi_user" "unifi_cloudkey" {
  name = "unifi-cloudkey"
  mac = "74:83:c2:14:70:9d"
  fixed_ip = "10.11.0.2"
  network_id = unifi_network.denhac_LAN.id
}

# tilver
resource "unifi_user" "metaserver" {
  name = "metaserver"
  mac = "00:21:9b:8a:ef:6c"
  fixed_ip = "10.11.5.10"
  network_id = unifi_network.denhac_LAN.id
}

# jax
resource "unifi_user" "thommy" {
  name = "thommy"
  mac = "00:26:b9:5b:f3:72"
}

# eddiezane
resource "unifi_user" "proxmox_01" {
  name = "proxmox-01"
  mac = "00:21:9b:9b:61:d5"
  network_id = unifi_network.denhac_proxmox.id
}

# eddiezane
resource "unifi_user" "proxmox_02" {
  name = "proxmox-02"
  mac = "00:21:9b:92:c5:c1"
  network_id = unifi_network.denhac_proxmox.id
}

# eddiezane
resource "unifi_user" "keycloak" {
  name = "keycloak"
  mac = "5a:b7:08:5d:64:e8"
  network_id = unifi_network.denhac_proxmox.id
}

# Classroom Chromecast
resource "unifi_user" "HaterVision_Lounge" {
  name = "HaterVision-Lounge"
  mac = "0c:62:a6:0c:47:9d"
  network_id = unifi_network.denhac_LAN.id
  fixed_ip = "10.11.2.165"
}

# flip
resource "unifi_user" "envirophat" {
  name = "envirophat"
  mac = "b8:27:eb:35:9f:77"
  network_id = unifi_network.denhac_LAN.id
  fixed_ip = "10.11.1.128"
}

# access card pc
resource "unifi_user" "Access_Card_PC" {
  name = "Access Card PC"
  mac = "50:9a:4c:03:5a:49"
  network_id = unifi_network.denhac_LAN.id
  fixed_ip = "10.11.4.148"
}

# metalshop light switch
resource "unifi_user" "DirtyRoomSwitch" {
  name = "DirtyRoomSwitch"
  mac = "68:ff:7b:b8:cd:e3"
}

# denhac camera NVR
resource "unifi_user" "denhac_NVR_Pro" {
  name = "denhac-NVR-Pro"
  mac = "68:d7:9a:60:fa:a5"
  fixed_ip = "10.11.4.2"
  network_id = unifi_network.denhac_LAN.id
}