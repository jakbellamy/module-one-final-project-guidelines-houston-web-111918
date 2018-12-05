class Report < ActiveRecord::Base
  belongs_to :crimes
  belongs_to :locations
end