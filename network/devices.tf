resource "unifi_device" "Server_Room_Switch_1" {
  name = "Server Room Switch #1"

  # Some video camera
  port_override {
    number = 4
    port_profile_id = data.unifi_port_profile.VideoCameras.id
  }

  # maybe an ap?
  port_override {
    number = 5
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  # maybe an ap?
  port_override {
    number = 6
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 7
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 8
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 9
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 10
    port_profile_id = data.unifi_port_profile.VideoCameras.id
  }

  port_override {
    number = 11
    name = "denhac NVR Pro"
  }

  port_override {
    number = 12
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 13
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 15
    name = "Back Area Switch"
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 17
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 18
    port_profile_id = data.unifi_port_profile.VideoCameras.id
  }

  port_override {
    number = 19
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 21
    name = "Lounge Switch"
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 23
    name = "Classroom Switch"
    port_profile_id = data.unifi_port_profile.denhac_LAN.id
  }

  port_override {
    number = 24
    port_profile_id = unifi_port_profile.Sockwell_Port_Profile.id
  }
}

# Not plugged in right now
# resource "unifi_device" "Back_Area_Switch" {
  # name = "Back Area Switch"

  # port_override {
    # number = 4
    # port_profile_id = data.unifi_port_profile.denhac_LAN.id
  # }

  # port_override {
    # number = 5
    # port_profile_id = data.unifi_port_profile.denhac_LAN.id
  # }
# }

resource "unifi_device" "Member_Space_Rack_Switch_1" {
  name = "Member Space Rack Switch #1"

  port_override {
    number = 1
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 2
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 3
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 4
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 7
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 9
    port_profile_id = data.unifi_port_profile.Storage_Wars.id
  }

  port_override {
    number = 17
    name = "Radioshack Idracs"
    port_profile_id = data.unifi_port_profile.denhac_proxmox.id
  }

  port_override {
    number = 19
    name = "Radioshack Idrac #2"
    port_profile_id = data.unifi_port_profile.denhac_proxmox.id
  }

  port_override {
    number = 21
    name = "denhac proxmox 01"
    port_profile_id = data.unifi_port_profile.denhac_proxmox.id
  }

  port_override {
    number = 23
    name = "denhac proxmox 02"
    port_profile_id = data.unifi_port_profile.denhac_proxmox.id
  }

  port_override {
    number = 24
    name = "Uplink - Server Room Switch #1"
  }
}

# Not plugged in right now
# resource "unifi_device" "Main_Table_Switch" {
  # name = "Main Table Switch"
# }

resource "unifi_device" "denhac_Front_AP" {
  name = "denhac Front AP"
}

resource "unifi_device" "Classroom_Switch" {
  name = "Classroom Switch"

  port_override {
    number = 1
    name = "Uplink - Server Room Switch #1"
  }

  port_override {
    number = 2
    name = "Classroom AP"
  }
}

resource "unifi_device" "Classroom_AP" {
  name = "Classroom AP"
}

resource "unifi_device" "Lounge_Switch" {
  name = "Lounge Switch"

  port_override {
    number = 1
    name = "Uplink - Server Room Switch #1"
  }

  port_override {
    number = 2
    name = "Lounge AP"
  }

  port_override {
    number = 3
    name = "Lounge Camera"
  }
}

resource "unifi_device" "Lounge_AP" {
  name = "Lounge AP"
}
