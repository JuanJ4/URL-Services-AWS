# terraform-aws-url-shortener

Terraform module for a AWS URL shortener

Creates a url shortener using only ApiGateway and Dynamodb

![URL_Shorten_Service](https://user-images.githubusercontent.com/23548321/167586434-ea174339-f457-4a73-a127-2f8bbe165538.jpeg)



## Usage
```
provider "aws" {
  region = "us-east1"
}

module "url-shortener" {
  source = "../.."
  tags = {
    application = "test"
  }
  stack_name = "url-shortener"
  api_stage_name = "test"
}
```

```
curl -X POST https://${url}/ --header 'content-type:application/json' --data '{ "id": "google", "url": "https://google.com" }'
```

Now, open `https://${url}/google`

 Invoke URL: https://0w47m147uf.execute-api.us-east-1.amazonaws.com/test
