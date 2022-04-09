provider "linode" {
    token = ""
}


# Math VM for @jandek's cryptographic experiments

resource "linode_instance" "math" {
    label            = "math"
    region           = "us-east"
    image            = "linode/ubuntu18.04"
    tags             = var.default_tags
    type             = var.math_node_type
    authorized_users = var.math_authorized_users
}

