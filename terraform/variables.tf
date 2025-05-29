variable "resource_group_name" {
  default = "multicloud-rg"
}

variable "location" {
  default = "West Europe"
}

variable "admin_username" {
  default = "adminuser"
}

variable "admin_password" {
  default = "P@ssw0rd123!" # Cambia por una contraseña segura
}

variable "user_ip" {
  description = "IP pública del usuario para las reglas de NSG"
  default     = "0.0.0.0/0" # Valor inicial, se actualizará dinámicamente
}