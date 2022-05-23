class Planet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  TYPE = ["Star", "Planet", "Dwarf Planet", "Asteroid", "Comet", "Moon" ]

  validates :name, presence: true
  validates :type, inclusion: { in: Planet::TYPE }, presence: true
  validates :temperature, numericality: { only_float: true }, presence: true
  validates :orbital_period, numericality: { only_integer: true }, presence: true
  validates :radius, numericality: { only_integer: true }, presence: true
  validates :around_planet, presence: true
  validates :moons, presence: true
  validates :surface_area, numericality: { only_integer: true }, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { maximum: 250 }
end
