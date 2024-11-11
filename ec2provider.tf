terraform {
  //バージョンを固定
  required_version = "1.9.8"
}

provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}