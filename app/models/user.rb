class User < ApplicationRecord
  enum gender: %i[male female]

  has_many :transactions
  has_many :tickets, through: :transactions
end
