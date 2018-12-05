# require 'json'
# require 'pry'

# def api_data
#   response_string = RestClient.get("https://moto.data.socrata.com/resource/p6kq-vsa3.json")
#   response_hash = JSON.parse(response_string)

# end

# #locations
# def cities
#   api_data.each do |hash|
#   puts hash["city"]
#   end
# end

# def zips
#   api_data.each do |hash|
#   puts hash["zip"]
#   end
# end

# def addresses
#   api_data.each do |hash|
#   puts hash["address_1"]
#   end
# end

# #crimes
# def incident_types
#   api_data.each do |hash|
#   puts hash["parent_incident_type"]
#   end
# end

# # def locations
# #   api_data.each do |hash|
# #     Location.create_or_find_by({ hash["zip"], hash["address_1"], hash["city"]})
# #   end
# # end

# #reports
# def date_times
#   api_data.each do |hash|
#   puts hash["incident_datetime"]
#   end
# end

# binding.pry