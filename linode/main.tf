provider "linode" {
#Access token stored locally as $ACCESS_TOKEN
}


# Math VM for @jandek's cryptographic experiments

resource "linode_instance" "math" {
    label            = "math"
    region           = "us-east"
    image            = "linode/ubuntu18.04"
    tags             = var.default_tags
    region           = "us-east-1"
    type             = var.math_node_type
    authorized_users = var.math_authorized_users
}

