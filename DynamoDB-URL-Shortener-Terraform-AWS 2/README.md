# DynamoDB-URL-Shortener-Terraform-AWS

Terraform module for a AWS URL shortener

Creates a url shortener using only ApiGateway and Dynamodb

![URL_Shorten_Service](https://user-images.githubusercontent.com/23548321/167586434-ea174339-f457-4a73-a127-2f8bbe165538.jpeg)


![Amazon APIGateway Dashboard - JuanJ](https://user-images.githubusercontent.com/23548321/167808754-8808bbe7-c759-4db6-a87b-585dbd8c7a41.png)



## Usage
```
provider "aws" {
  region = "us-east1"
   secretkey = ""
   accesskey = ""
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
curl -X POST https://{awsinvokedURL} --header 'content-type:application/json' --data '{ "id": "tweets", "url": "https://twitter.com" }'
```

Now, open Invoke URL: `https://46yw59620f.execute-api.us-east-1.amazonaws.com/test/{idyoucreated}`

You should see your below url shortener ID and the URL inside DynamoDB


![DynamoDB- URLs](https://user-images.githubusercontent.com/23548321/169397453-6cbffd51-d866-429c-adcc-7cfea2b62c15.png)



