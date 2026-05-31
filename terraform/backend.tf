terraform {

  backend "s3" {

    bucket = "terraform-state-prod"

    key = "networking/dx-tgw.tfstate"

    region = "ap-south-1"

    encrypt = true

    dynamodb_table = "terraform-locks"
  }
}
