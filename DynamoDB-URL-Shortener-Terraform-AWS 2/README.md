# terraform-aws-url-shortener

Terraform module for a AWS URL shortener

Creates a url shortener using only ApiGateway and Dynamodb


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