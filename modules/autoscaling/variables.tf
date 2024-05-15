variable "namespace" {
  type = string
}

variable "ssh_keypair" {
  type = string
}

variable "vpc" {
  type = any
}

variable "sg" {
  type = object({
    web_server = string
    lb         = string
    db         = string
  })
}

variable "db_config" {
  type = object({
    user     = string
    password = string
    database = string
    hostname = string
    port     = number
  })

}