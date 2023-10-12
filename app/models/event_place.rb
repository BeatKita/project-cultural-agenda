class EventPlace < ApplicationRecord
  validates :name, length: { maximum: 40 }, presence: true
  validates :description, length: { maximum: 250 }, presence: true
  validates :place_name, length: { maximum: 30 }, presence: true
  validates :open_hour, presence: true
  validates :close_hour, presence: true
  has_many :events
end
