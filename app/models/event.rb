class Event < ApplicationRecord
  validates :name, length: { maximum: 40 }, presence: true
  validates :description, length: { maximum: 250 }, presence: true
  validate :start_date_cannot_be_in_the_past
  def start_date_cannot_be_in_the_past
    return if start_date.present? && start_date > Date.today

    errors.add(:start_date, "can't be in the past")
  end
  validate :end_date_cannot_be_older_than_start_date
  def end_date_cannot_be_older_than_start_date
    return if end_date.present? && end_date >= start_date

    errors.add(:end_date, "can't be older than start date")
  end
  belongs_to :event_place
end
