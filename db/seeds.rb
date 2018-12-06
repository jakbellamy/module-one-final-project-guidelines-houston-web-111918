require_relative '../config/environment.rb'
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
    all_incident_type = incident["incident_type_primary"][4...50]
    all_parent_incident = incident["parent_incident_type"]
    all_date = incident["incident_datetime"][0...-13]
    new_crime = Crime.new(incident_type: all_incident_type, parent_incident: all_parent_incident)
    new_crime.save

    full_incident = "#{all_parent_incident} (#{all_incident_type})"

    city_found = (Location.where(city: incident["city"]).where_values_hash).values
    zip_found = (Location.where(zip_code: incident["zip"]).where_values_hash).values
    location_found = "#{zip_found}, #{city_found}"
    # location_fixed = city_found.each do |location| JSON.parse(location.self.location) end
    Report.create(crime: full_incident, location: location_found, date: all_date)
  end
end

seed_crimes