class Event < ApplicationRecord
validates :name, :description, :place_name, :start_date, :end_date

end
