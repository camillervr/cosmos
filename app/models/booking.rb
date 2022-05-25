class Booking < ApplicationRecord
  belongs_to :planet
  belongs_to :user

  validates :status, presence: true
  validates :end_date, presence: true
  validates :start_date, presence: true
  validates :guests, numericality: { in: (1..5) }

  scope :pending, -> { where(status: "Space Mission Pending") }
  scope :accepted, -> { where(status: "Space Mission Accepted") }
  scope :denied, -> { where(status: "Space Mission Denied") }
end
