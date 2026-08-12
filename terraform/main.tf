terraform {
  required_version = ">= 1.15.0"
}

resource "terraform_data" "deployment" {
  input = "CI/CD deployment"
}
