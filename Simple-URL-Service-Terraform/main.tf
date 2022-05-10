 terraform {
  required_providers {
    urlshorten = {
      source = "wastorga/urlshorten"
      version = "0.0.6-beta"
    }
  }
}
 
 provider "urlshorten" {
    # Shorten URL service's password
    password = "admin123"
    # it can be set using the environment variable SHORTEN_PASSWORD

    # Service's name
    service = "tinyurl"
    # it can be set using the environment variable SHORTEN_SERVICE
  }

  # Retrieve project's templates
  data "shorten_url" "response" {
    provider = urlshorten
    url     = "https://www.iana.org/dnssec/archive/launch-status-updates"
  }
  output "shorten_url_response" {
    value = data.shorten_url.response
  }