packer {
  required_plugins {
    proxmox = {
      version = ">= 1.0.4"
      source  = "github.com/hashicorp/proxmox"
    }
  }
}

source "proxmox-iso" "denhac-ubuntu-2004" {
  proxmox_url = "${var.proxmox_url}"
  username = "${var.proxmox_username}"
  token = "${var.proxmox_token}"
  node = "${var.proxmox_node}"
  insecure_skip_tls_verify = true

  ssh_username = "denhac"
  ssh_password = "${var.denhac_password}"
  ssh_timeout = "20m"

  vm_name = "denhac-ubuntu-2004"
  vm_id = "9000"
  iso_url = "https://releases.ubuntu.com/20.04.4/ubuntu-20.04.4-live-server-amd64.iso"
  iso_checksum = "28ccdb56450e643bad03bb7bcf7507ce3d8d90e8bf09e38f6bd9ac298a98eaad"
  iso_storage_pool = "local"
  unmount_iso = true

  sockets = 1
  cores = 2
  cpu_type = "kvm64"
  memory = 2048
  os = "l26"

  scsi_controller = "virtio-scsi-pci"

  disks {
    type = "scsi"
    disk_size = "20G"
    storage_pool = "local-lvm"
    storage_pool_type = "lvm"
  }

  network_adapters {
    bridge = "vmbr0"
    model = "virtio"
  }

  qemu_agent = true
  cloud_init = true
  cloud_init_storage_pool = "local-lvm"

  http_interface = "${var.http_interface}"

  http_content = {
    "/meta-data" = ""
    "/user-data" = <<EOF
#cloud-config
autoinstall:
  version: 1
  locale: en_US.UTF-8
  keyboard:
    layout: en
    variant: us
  refresh-installer:
    update: yes
  identity:
    hostname: denhac-ubuntu-2004
    username: denhac
    password: "${var.denhac_password_enc}"
    realname: denhac
  storage:
    layout:
      name: lvm
    swap:
      size: 0
  ssh:
    install-server: yes
    allow-pw: yes
  packages:
    - qemu-guest-agent
    EOF
  }

  boot_wait = "3s"
  boot_command = [
    "<esc><wait><esc><wait><f6><wait><esc><wait>",
    "<bs><bs><bs><bs><bs>",
    "autoinstall ds=nocloud-net;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ ",
    "--- <enter>"
  ]
}

build {
  sources = ["source.proxmox-iso.denhac-ubuntu-2004"]
  provisioner "shell" {
    execute_command = "echo '${var.denhac_password}' | sudo -S sh -c '{{ .Vars }} {{ .Path }}'"
    inline = [
      "echo 'Waiting for cloud-init...'",
      "while [ ! -f /var/lib/cloud/instance/boot-finished ]; do sleep 1; done",
      "apt-get update",
      "DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y -q",
      "DEBIAN_FRONTEND=noninteractive apt-get clean -y -q",
      "DEBIAN_FRONTEND=noninteractive apt-get autoclean -y -q",
      "DEBIAN_FRONTEND=noninteractive apt-get autoremove -y -q",
      "sed -i 's/preserve_hostname: false/preserve_hostname: true/' /etc/cloud/cloud.cfg",
      "truncate -s 0 /etc/hostname",
      "hostnamectl set-hostname localhost",
      "truncate -s 0 /etc/machine-id",
      "rm -f /etc/ssh/ssh_host_*",
      "rm -f /etc/netplan/00-installer-config.yaml",
      "rm -f /etc/cloud/cloud.cfg.d/99-installer.cfg",
      "rm -f /etc/cloud/cloud.cfg.d/subiquity-disable-cloudinit-networking.cfg",
      "echo datasource_list: [ NoCloud, ConfigDrive ] >> /etc/cloud/cloud.cfg.d/99_pve.cfg",
      "cloud-init clean -s -l",
      "cat /dev/null > ~/.bash_history",
    ]
  }
}
