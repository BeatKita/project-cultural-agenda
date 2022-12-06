class EventPlace < ApplicationRecord
  validates :name, length: { maximum: 40 }, presence: true
  validates :description, length: { maximum: 250 }, presence: true
  validates :adress, length: { maximum: 30 }, presence: true
  validates :open_hour, presence: true
  validates :close_hour, presence: true
end
