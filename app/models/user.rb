class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :planets

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :date_of_birth, presence: true
  # validates :address, presence: true
  # validates :city, presence: true
  # validates :spirit_animal, presence: true
  # validates :astro_sign, presence: true
end
