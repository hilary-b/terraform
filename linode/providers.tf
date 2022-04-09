terraform {
  required_providers {
    linode = {
      source                    = "linode/linode"
    }
  }


  backend "s3" {
    profile                     = "linode-s3"
    bucket                      = "tf-backend"
    key                         = "tfstate.json"
    region                      = "us-east-1"
    endpoint                    = "us-east-1.linodeobjects.com"
    skip_credentials_validation = true
    # access_key and secrey_key stored locally
  }
}