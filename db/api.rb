require 'rest-client'
require 'json'
require 'pry'

def api_data
  response_string = RestClient.get("https://moto.data.socrata.com/resource/p6kq-vsa3.json")
  response_hash = JSON.parse(response_string)

end

