class Crime < ActiveRecord::Base
  has_many :reports
  has_many :location, through: :reports
end