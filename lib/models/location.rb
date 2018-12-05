class Location < ActiveRecord::Base
  has_many :reports
  has_many :crimes, through: :reports
end