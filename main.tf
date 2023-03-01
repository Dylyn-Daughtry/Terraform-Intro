Terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "3.45.0"
        }
        aws = {
            source = "hashicorp/aws"
            version = "4.56.0"
        }
    }
}

provider "azurerm" {
    features{}
}

provider "aws" {
    region = "us-east-1"
}

resource "azurerm_resource_group" "rgtest1" {
    name = "hs-az-rg1"
    location = "West Europe"

    tags = {
        source = "Terraform"
    }
}

resource "aws_s3_bucket" "a" {
    bucket = "my-tf-test-bucket"
  
}

