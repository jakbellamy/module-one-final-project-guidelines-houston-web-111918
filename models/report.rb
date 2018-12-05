class Report < ActiveRecord::Base
  has_many :crimes
  has_many :locations
end