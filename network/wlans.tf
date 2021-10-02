resource "unifi_wlan" "denhac" {
  name       = "denhac"
  passphrase = var.denhac_password
  security   = "wpapsk"
  wlan_band  = "both"
  no2ghz_oui = true
  network_id    = unifi_network.denhac_LAN.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = data.unifi_user_group.default.id
}

resource "unifi_wlan" "SecureSet_Academy" {
  name       = "SecureSet-Academy"
  passphrase = var.secure_set_academy_password
  security   = "wpapsk"
  wlan_band  = "both"
  no2ghz_oui = true
  network_id    = unifi_network.SecureSet_Net_Clone.id
  ap_group_ids  = [data.unifi_ap_group.default.id]
  user_group_id = data.unifi_user_group.default.id
}
