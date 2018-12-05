class Location < ActiveRecord::Base
  belongs_to :report
  has_many :crimes, through: :reports
end