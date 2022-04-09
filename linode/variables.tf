
variable "default_tags" {
  description = "default tags to apply to all resources associated with this VM"
  default = ["terraformed"]
}

###MATH###

variable "math_node_type" {
  description = "size of the math linode pool"
  default = "g6-standard-2"
}

variable "math_authorized_users" {
  description = "list of authorized users for the math vm"
  default = ["hilary-b", "natemoyer"]
}

