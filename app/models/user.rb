class User < ApplicationRecord
  enum gender: %i[male female]

  has_many :deals
  has_many :tickets, through: :deals
  has_many :representations, through: :tickets

  validates :address, :country, :email, :first_name, :last_name, :zip_code, presence: true
end
