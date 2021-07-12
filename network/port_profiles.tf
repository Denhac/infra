data "unifi_port_profile" "All" {
  name = "All"
}

data "unifi_port_profile" "Disabled" {
  name = "Disabled"
}

data "unifi_port_profile" "denhac_LAN" {
  name = "denhac_LAN"
  depends_on = [unifi_network.denhac_LAN]
}

data "unifi_port_profile" "denhac_ldap" {
  name = "denhac_ldap"
  depends_on = [unifi_network.denhac_ldap]
}

data "unifi_port_profile" "denhac_proxmox" {
  name = "denhac_proxmox"
  depends_on = [unifi_network.denhac_proxmox]
}

data "unifi_port_profile" "denhac_ad_free_net" {
  name = "denhac_ad_free_net"
  depends_on = [unifi_network.denhac_ad_free_net]
}

data "unifi_port_profile" "denhac_iot_net" {
  name = "denhac_iot_net"
  depends_on = [unifi_network.denhac_iot_net]
}

data "unifi_port_profile" "SecureSet_Net_Clone" {
  name = "SecureSet-Net-Clone"
  depends_on = [unifi_network.SecureSet_Net_Clone]
}

data "unifi_port_profile" "Sockwell_100" {
  name = "Sockwell-100"
  depends_on = [unifi_network.Sockwell_100]
}

data "unifi_port_profile" "Sockwell_110" {
  name = "Sockwell-110"
  depends_on = [unifi_network.Sockwell_110]
}

data "unifi_port_profile" "Sockwell_120" {
  name = "Sockwell-120"
  depends_on = [unifi_network.Sockwell_120]
}

data "unifi_port_profile" "Storage_Wars" {
  name = "Storage Wars"
  depends_on = [unifi_network.Storage_Wars]
}

data "unifi_port_profile" "VideoCameras" {
  name = "VideoCameras"
  depends_on = [unifi_network.VideoCameras]
}

resource "unifi_port_profile" "Sockwell_Port_Profile" {
  name = "Sockwell-Port-Profile"
  native_networkconf_id = unifi_network.denhac_LAN
  poe_mode = "auto"
  autoneg = true
  forward = "customize"
  tagged_networkconf_ids = [unifi_network.Sockwell_100.id, unifi_network.Sockwell_110.id, unifi_network.Sockwell_120.id]
}
