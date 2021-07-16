# Sockwell's VPN
resource "unifi_static_route" "sockwell_vpn_route" {
  name     = "Sockwell VPN Route"
  type     = "nexthop-route"
  network  = "10.13.37.0/24"
  distance = 1
  next_hop = "10.11.6.112"
}

# Storage Wars DMZ
resource "unifi_static_route" "storage_wars_dmz" {
  name     = "Storage Wars DMZ"
  type     = "nexthop-route"
  network  = "10.5.1.0/24"
  distance = 1
  next_hop = "10.5.0.1"
}
