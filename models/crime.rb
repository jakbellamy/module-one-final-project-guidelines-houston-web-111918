class Crime < ActiveRecord::Base
  belongs_to :report
  belongs_to :location, through: :report
end