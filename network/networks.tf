# Main
resource "unifi_network" "denhac_LAN" {
  name = "denhac_LAN"
  purpose = "corporate"
  domain_name = "inside.denhac.org"
  subnet = "10.11.0.1/20"
  dhcp_enabled = true
  dhcp_start = "10.11.2.1"
  dhcp_stop = "10.11.4.255"
}

# LDAP
# Owner: ?
resource "unifi_network" "denhac_ldap" {
  name = "denhac_ldap"
  purpose = "corporate"
  vlan_id = 1337
  domain_name = "ldap.internal.denhac.org"
  subnet = "10.50.0.1/24"
  dhcp_enabled = false
}

# Proxmox
# Owner: eddiezane
resource "unifi_network" "denhac_proxmox" {
  name = "denhac_proxmox"
  purpose = "corporate"
  vlan_id = 55
  subnet = "10.0.55.1/24"
  dhcp_enabled = true
  dhcp_start = "10.0.55.20"
  dhcp_stop = "10.0.55.254"
}

# pihole network?
# Owner: ?
resource "unifi_network" "denhac-ad-free-net" {
  name = "denhac-ad-free-net"
  purpose = "corporate"
  vlan_id = 12
  domain_name = "denhac-ad-free"
  subnet = "10.12.0.1/24"
  dhcp_enabled = false
}

# Owner: ?
resource "unifi_network" "denhac-iot-net" {
  name = "denhac-iot-net"
  purpose = "corporate"
  vlan_id = 50
  domain_name = "iot.inside.denhac.org"
  subnet = "192.168.25.1/24"
  dhcp_enabled = true
  dhcp_start = "192.168.25.6"
  dhcp_stop = "192.168.25.254"
}

# MWCCDC
# Site-to-site vpn
# No support in unifi provider yet
# Owner: ?

# Owner: ?
resource "unifi_network" "SecureSet-Net-Clone" {
  name = "SecureSet-Net-Clone"
  purpose = "corporate"
  vlan_id = 30
  subnet = "172.16.30.1/24"
  dhcp_enabled = true
  dhcp_start = "172.16.30.6"
  dhcp_stop = "172.16.30.254"
}

# Owner: dsockwell
resource "unifi_network" "Sockwell-100" {
  name = "Sockwell-100"
  purpose = "corporate"
  vlan_id = 100
  subnet = "10.11.100.1/24"
  dhcp_enabled = false
}

# Owner: dsockwell
resource "unifi_network" "Sockwell-110" {
  name = "Sockwell-110"
  purpose = "corporate"
  vlan_id = 110
  subnet = "10.11.110.1/24"
  dhcp_enabled = false
}

# Owner: dsockwell
resource "unifi_network" "Sockwell-120" {
  name = "Sockwell-120"
  purpose = "corporate"
  vlan_id = 120
  subnet = "10.11.120.1/24"
  dhcp_enabled = false
}

# Owner: ?
resource "unifi_network" "Storage_Wars" {
  name = "Storage Wars"
  purpose = "corporate"
  vlan_id = 5
  domain_name = "storagewars.inside.denhac.org"
  subnet = "10.5.0.1/24"
  dhcp_enabled = true
  dhcp_start = "10.5.0.1"
  dhcp_stop = "10.5.0.100"
}

# Owner: ?
resource "unifi_network" "VideoCameras" {
  name = "VideoCameras"
  purpose = "corporate"
  vlan_id = 20
  domain_name = "camera.denhac.org"
  subnet = "10.11.20.1/24"
  dhcp_enabled = true
  dhcp_start = "10.11.20.21"
  dhcp_stop = "10.11.20.254"
}
