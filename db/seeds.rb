require_relative 'api.rb'


def zip_code
    array = []
  api_data.map do |hash|
  array << hash["zip"]
  end
  array
end

def zips
    array.each do |zip_num|
        Location.new(zip_code: zip_num)
    end
end

zip_code
