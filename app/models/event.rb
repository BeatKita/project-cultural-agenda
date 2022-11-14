class Event < ApplicationRecord
validate :name, :description, :place_name, :start_date, :end_date

end
