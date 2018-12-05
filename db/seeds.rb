require_relative '../config/environment.rb'


# Location.destroy_all
# Crime.destroy_all
# Report.destroy_all

def hpd_log
    response_string = JSON.parse(RestClient.get("https://moto.data.socrata.com/resource/p6kq-vsa3.json"))
end


def seed_locations
  hpd_log.each do |incident|
    all_zip = incident["zip"]
    all_address = incident["address_1"]
    all_city = incident["city"]
   
    new_location = Location.new(zip_code: all_zip, address: all_address, city: all_city)
    new_location.save
  end
end

seed_locations
  
def seed_crimes
  hpd_log.each do |incident|
    all_incident_type = incident["incident_type_primary"]
    all_parent_incident = incident["parent_incident_type"]

    new_crime = Crime.new(incident_type: all_incident_type, parent_incident: all_parent_incident)
    new_crime.save
  end
end

seed_crimes


def reports
  hpd_log.each do |incident|
    all_date = incident["incident_datetime"]
  end




# def crimes
#   hpd_log.map do |incident|
#     Crime.each(incident_type: incident[:incident_type:],parent_incident: incident[:parent_incident_type])
#   end
# end

# def reports
#   Report.create()
# end

# hpd_log
# locations
# crimes
# reports