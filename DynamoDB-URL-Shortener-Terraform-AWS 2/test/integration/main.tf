provider "aws" {
   region = "us-east-1"
 
  
}

module "url-shortener" {
  source = "../.."
  tags = {
    application = "test"
  }
  stack_name = "url-shortener"
  api_stage_name = "test"
}