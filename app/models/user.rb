class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :first_name
  validates :last_name
  validates :date_of_birth
  validates :address
  validates :city
  validates :spirit_animal
  validates :astro_sign
end
