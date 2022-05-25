class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :planets, dependent: :destroy

  has_many :bookings

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true

  # Renvoie les planetes que j'ai reservé
  has_many :booked_planets, through: :bookings, source: :planet

  # Renvoyer mes planetes loués
  has_many :rented_planets, through: :planets, source: :bookings
end
