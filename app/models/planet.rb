class Planet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  OBJECT = ["Star", "Planet", "Dwarf Planet", "Asteroid", "Comet", "Moon"]

  validates :name, presence: true
  validates :object, inclusion: { in: Planet::OBJECT }, presence: true
end
