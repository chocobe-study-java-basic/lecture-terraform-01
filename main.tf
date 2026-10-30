terraform {
  // 자바의 import 와 비슷함
  // aws 라이브러리 불러옴
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-2"
}

# "리소스 명" "인스턴스 명"
# => 리소스 명: "aws_vpc"
# => 인스턴스 명: "chocobe-vpc-02--from-terraform"
resource "aws_vpc" "chocobe-vpc-02--from-terraform" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "chocobe-vpc-2-tag--from-terraform"
  }
}
