# provider
variable "username" {
  type = string
  sensitive = true
}
variable "password" {
  type = string
  sensitive = true
}
variable "api_url" {
  type = string
  sensitive = true
}

# wlan
variable "denhac_password" {
  type = string
  sensitive = true
}
variable "denhac_ad_free_password" {
  type = string
  sensitive = true
}
variable "iot_password" {
  type = string
  sensitive = true
}
variable "secure_set_academy_password" {
  type = string
  sensitive = true
}
