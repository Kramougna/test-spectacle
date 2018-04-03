class User < ApplicationRecord
  enum gender: %i[male female]

  has_many :transactions
  has_many :deals, through: :transactions

  validates :address, :birth_date, :country, :email, :first_name, :gender, :last_name, :zip_code, presence: true
end
