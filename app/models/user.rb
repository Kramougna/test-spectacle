class User < ApplicationRecord
  enum gender: %i[male female]

  has_many :transactions
  has_many :deals, through: :transactions
end
