class Planet < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_one_attached :photo
  OBJECT = ["Star", "Planet", "Dwarf Planet", "Asteroid", "Comet", "Moon"]

  validates :name, presence: true
  validates :object, inclusion: { in: Planet::OBJECT }, presence: true
  validates :price_per_day, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name,
  against: [ :name ],
  using: {
    tsearch: { prefix: true }
  }
end
