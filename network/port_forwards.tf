# Owner: ?
resource "unifi_port_forward" "denhacVPN" {
  name = "denhacVPN"
  port_forward_interface = "wan"
  src_ip = "any"
  dst_port = "1175"
  fwd_ip = "10.11.3.207"
  fwd_port = "1175"
  protocol = "udp"
}

# Owner: eddiezane
resource "unifi_port_forward" "eddie_jump_vpn" {
  name = "eddie jump vpn"
  port_forward_interface = "wan"
  src_ip = "any"
  dst_port = "51820"
  fwd_ip = "10.0.55.21"
  fwd_port = "51820"
  protocol = "tcp_udp"
}

# Owner: dsockwell
resource "unifi_port_forward" "Sockwell_Fwd_1" {
  name = "Sockwell - Fwd1"
  port_forward_interface = "wan"
  src_ip = "any"
  dst_port = "8443"
  fwd_ip = "10.11.6.22"
  fwd_port = "443"
  protocol = "tcp_udp"
}

# Owner: dsockwell
resource "unifi_port_forward" "Sockwell_Fwd_2" {
  name = "Sockwell - Fwd2"
  port_forward_interface = "wan"
  src_ip = "any"
  dst_port = "8022"
  fwd_ip = "10.11.6.85"
  fwd_port = "22"
  protocol = "tcp_udp"
}

# Owner: dsockwell
resource "unifi_port_forward" "Sockwell_VPN" {
  name = "Sockwell_VPN"
  port_forward_interface = "wan"
  src_ip = "any"
  dst_port = "21194"
  fwd_ip = "10.11.6.112"
  fwd_port = "1194"
  protocol = "udp"
}

# Owner: ?
resource "unifi_port_forward" "Storage_Wars_Site_to_Site" {
  name = "Storagewars Site-to-Site"
  port_forward_interface = "wan"
  src_ip = "138.68.52.135"
  dst_port = "1194"
  fwd_ip = "10.5.0.2"
  fwd_port = "1194"
  protocol = "tcp_udp"
}

# Owner: Scott
resource "unifi_port_forward" "UVC_HTTP_ChooChoo" {
  name = "UVC_HTTP_ChooChoo"
  port_forward_interface = "wan"
  src_ip = "any"
  dst_port = "80"
  fwd_ip = "10.11.3.207"
  fwd_port = "80"
  protocol = "tcp"
}

# Owner: Scott
resource "unifi_port_forward" "UVC_HTTPs_ChooChoo" {
  name = "UVC_HTTPs_ChooChoo"
  port_forward_interface = "wan"
  src_ip = "any"
  dst_port = "443"
  fwd_ip = "10.11.3.207"
  fwd_port = "443"
  protocol = "tcp"
  log = true
}

# Owner: Scott
resource "unifi_port_forward" "UVC_SSH_ChooChoo" {
  name = "UVC_SSH_ChooChoo"
  port_forward_interface = "wan"
  src_ip = "any"
  dst_port = "19266"
  fwd_ip = "10.11.6.40"
  fwd_port = "22"
  protocol = "tcp"
  log = true
}

# Owner: Scott
resource "unifi_port_forward" "UVC_SSH_ChooChoo_19266" {
  name = "UVC_SSH_ChooChoo"
  port_forward_interface = "wan"
  src_ip = "any"
  dst_port = "19266"
  fwd_ip = "10.11.6.40"
  fwd_port = "22"
  protocol = "tcp"
  log = true
}

# Owner: Scott
resource "unifi_port_forward" "UVC_SSH_ChooChoo_17688" {
  name = "UVC_SSH_ChooChoo"
  port_forward_interface = "wan"
  src_ip = "any"
  dst_port = "17688"
  fwd_ip = "10.11.3.207"
  fwd_port = "22"
  protocol = "tcp"
}
