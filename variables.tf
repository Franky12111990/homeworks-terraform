###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
  sensitive   = true
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

//variable "vms_ssh_public_root_key" {
//  type        = string
//  description = "SSH public key"
//  sensitive   = true
//}

variable "vm_web_os" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu OS 20.04"
}

variable "vm_web_name" {
  type        =  string
  default     = "netology-develop-platform-web"
  description = "netology"
}

variable "vm_web_version" {
  type        = string
  default     = "standard-v3"
  description = "standard config"
}

//variable "vm_web_cores" {
//  type        = string
//  default     = "2"
//  description = "How many cores"
//}

//variable "vm_web_memory" {
//  type        = string
//  default     = "1"
//  description = "How many RAM"
//}

//variable "vm_web_fraction" {
//  type        = string
//  default     = "20"
//  description = "fraction"
//}

variable "vms_resources" {
  type        = map(map(string))
  description = "Configuration for VM resources"
}

variable "metadata" {
  type        = map(string)
  description = "Metadata for VMs"
}
