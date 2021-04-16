provider "aws" {
  region	= "us-west-2"
  access_key	= "AKIAWS4H3H53AQXWLFML"
  secret_key	= "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"
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalaner", "stage-loadbalancer", "prod-loadbalancer"]
}

resource "aws_iam_user" "lb" {
   name = var.elb_names[count.index]
   count = 3
   path = "/system/"
}


