###cloud vars
variable "vm_db_token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
  sensitive   = true
}

variable "vm_db_cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "vm_db_folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "vm_db_default_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "vm_db_default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

//variable "vm_db_ssh_public_root_key" {
//  type        = string
//  description = "SSH public key"
//  sensitive   = true
}

variable "vm_db_os" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu OS 20.04"
}

variable "vm_db_name" {
  type        =  string
  default     = "netology-develop-platform-db"
  description = "netology"
}

variable "vm_db_version" {
  type        = string
  default     = "standard-v3"
  description = "standard config"
}

// variable "vm_db_cores" {
//  type        = string
//  default     = "2"
// description = "How many cores"
// }

//variable "vm_db_memory" {
//  type        = string
//  default     = "2"
//  description = "How many RAM"
//}

// variable "vm_db_fraction" {
//  type        = string
//  default     = "20"
//  description = "fraction"
