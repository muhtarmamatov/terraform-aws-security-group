module "sg" {
  source        = "../modules"
  name          = "ALLOW-HTTP-HTTPS-SG"
  description   = "Allow http and https protocols"
  vpc_id        = "vpc-0f4f7ed2f2d767774"
  ingress_rules = [{ "description" : "description for ingress", "from_port" : 443, "to_port" : 443, "protocol" : "HTTPS", "cidr_blocks" : ["0.0.0.0/0"] }]
  egress_rules  = [{ "description" : "description for engress", "from_port" : 443, "to_port" : 443, "protocol" : "HTTPS", "cidr_blocks" : ["0.0.0.0/0"] }]

  project     = "Kubernetes"
  environment = "Testing"
  label_order = ["name", "environment"]
}